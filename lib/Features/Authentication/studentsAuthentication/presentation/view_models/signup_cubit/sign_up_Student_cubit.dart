import 'package:bloc/bloc.dart';
 import 'package:meta/meta.dart';

import '../../../data/repos/signupRepos/signup_student_repo.dart';
 part 'sign_up_Student_state.dart';

class SignUpStudentCubit extends Cubit<SignUpStudentState> {
  SignUpStudentCubit(this.signUpStudentRepo) : super(SignUpStudentInitial());
  final SignUpStudentRepo signUpStudentRepo;
  Future<void> signUpStudent( String name,
      String email,
      String password,
      String passwordConfirmation,
      String phone,
      String universityEmail,
      String departmentId,
      String fatherEmail,
      String ssn,
      String fatherPhone,)async
  {
    emit(SignUpStudentLoading());
    var result =await signUpStudentRepo.signUpAsStudent(name, email, password, passwordConfirmation, phone, universityEmail, departmentId, fatherEmail, ssn, fatherPhone);
    if (result != null) {
      emit(SignUpStudentFailure(result.errmessage));
    } else {
      emit(SignUpStudentSuccess());
    }
  }
}
