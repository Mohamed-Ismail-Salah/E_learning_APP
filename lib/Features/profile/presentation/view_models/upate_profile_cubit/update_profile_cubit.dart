import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/profile_info_model.dart';
import '../../../data/update_profile/update_profile_repo.dart';

part 'update_profile_state.dart';

class UpdateProfileCubit extends Cubit<UpdateProfileState> {
  UpdateProfileCubit(this.updateProfileRepo) : super(UpdateProfileInitial());
  final  UpdateProfileRepo  updateProfileRepo;

  Future<void>  updateProfile(String name, String email,String password,String phone)async
  {
    emit(UpdateProfileLoading());

    var result =await updateProfileRepo.updateProfile(  name, email, password, phone);
    result.fold((failure){
      emit(UpdateProfileFailure(failure.errmessage));
    }, (profileInf){
      emit(UpdateProfileSuccess(profileInf));

    }
    );

  }
}
