import 'package:bloc/bloc.dart';
 import 'package:meta/meta.dart';

 import '../../../data/get_profile_info/get_Student_porfile_info_repo.dart';
import '../../../data/models/profile_Student_info_model.dart';

part 'get_Student_profile_ifo_state.dart';

class GetStudentProfileIfoCubit extends Cubit<GetStudentProfileIfoState> {
  GetStudentProfileIfoCubit(this.getStudentProfileInfRepo) : super(GetStudentProfileIfoInitial());

  final GetStudentProfileInfRepo getStudentProfileInfRepo;

  Future<void> getStudentProfileInf()async
  {
    emit(GetStudentProfileIfoLoading());

    var result =await getStudentProfileInfRepo.getStudentProfileIf();
    result.fold((failure){
      emit(GetStudentProfileIfoFailure(failure.errmessage));
    }, (profileInf){
      emit(GetStudentProfileIfoSuccess(profileInf));

    }
    );

  }
}

