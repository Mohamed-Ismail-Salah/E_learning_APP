import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/profile_Student_info_model.dart';
import '../../../data/update_profile/update_Student_profile_repo.dart';

part 'update_Student_profile_state.dart';

class UpdateStudentProfileCubit extends Cubit<UpdateStudentProfileState> {
  UpdateStudentProfileCubit(this.updateStudentProfileRepo) : super(UpdateStudentProfileInitial());
  final  UpdateStudentProfileRepo  updateStudentProfileRepo;

  Future<void>  updateStudentProfile(String name, String email,String password,String phone,String fatherPhone,
      String fatherEmail,
      String  universityEmail,
      )async
  {
    emit(UpdateStudentProfileLoading());

    var result =await updateStudentProfileRepo.updateStudentProfile(name, email, phone, password
        , fatherPhone, fatherEmail, universityEmail);
    result.fold((failure){
      emit(UpdateStudentProfileFailure(failure.errmessage));
    }, (profileInf){
      emit(UpdateStudentProfileSuccess(profileInf));

    }
    );

  }
}
