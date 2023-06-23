import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/profile_info_model.dart';
import '../../../data/update_profile/update_Admin_profile_repo.dart';

part 'update_profile_state.dart';

class UpdateAdminProfileCubit extends Cubit<UpdateAdminProfileState> {
  UpdateAdminProfileCubit(this.updateAdminProfileRepo) : super(UpdateAdminProfileInitial());
  final  UpdateAdminProfileRepo  updateAdminProfileRepo;

  Future<void>  updateProfile(String name, String email,String password,String phone)async
  {
    emit(UpdateAdminProfileLoading());

    var result =await updateAdminProfileRepo.updateAdminProfile(  name, email, password, phone);
    result.fold((failure){
      emit(UpdateAdminProfileFailure(failure.errmessage));
    }, (profileInf){
      emit(UpdateAdminProfileSuccess(profileInf));

    }
    );

  }
}
