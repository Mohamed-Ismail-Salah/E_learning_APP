import 'package:bloc/bloc.dart';
 import 'package:meta/meta.dart';

 import '../../../data/get_profile_info/get_Admin_porfile_info_repo.dart';
import '../../../data/models/profile_info_model.dart';

part 'get_Admin_profile_ifo_state.dart';

class GetAdminProfileIfoCubit extends Cubit<GetAdminProfileIfoState> {
  GetAdminProfileIfoCubit(this.getAdminProfileInfRepo) : super(GetAdminProfileIfoInitial());

  final GetAdminProfileInfRepo getAdminProfileInfRepo;

  Future<void> getProfileInf()async
  {
    emit(GetAdminProfileIfoLoading());

    var result =await getAdminProfileInfRepo.getAdminProfileIf();
    result.fold((failure){
      emit(GetAdminProfileIfoFailure(failure.errmessage));
    }, (profileInf){
      emit(GetAdminProfileIfoSuccess(profileInf));

    }
    );

  }
}

