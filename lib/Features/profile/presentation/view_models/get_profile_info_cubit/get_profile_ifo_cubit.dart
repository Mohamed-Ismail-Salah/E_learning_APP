import 'package:bloc/bloc.dart';
 import 'package:meta/meta.dart';

 import '../../../data/get_profile_info/get_porfile_info_repo.dart';
import '../../../data/models/profile_info_model.dart';

part 'get_profile_ifo_state.dart';

class GetProfileIfoCubit extends Cubit<GetProfileIfoState> {
  GetProfileIfoCubit(this.getProfileInfRepo) : super(GetProfileIfoInitial());

  final GetProfileInfRepo getProfileInfRepo;

  Future<void> getProfileInf()async
  {
    emit(GetProfileIfoLoading());

    var result =await getProfileInfRepo.getProfileIf();
    result.fold((failure){
      emit(GetProfileIfoFailure(failure.errmessage));
    }, (profileInf){
      emit(GetProfileIfoSuccess(profileInf));

    }
    );

  }
}

