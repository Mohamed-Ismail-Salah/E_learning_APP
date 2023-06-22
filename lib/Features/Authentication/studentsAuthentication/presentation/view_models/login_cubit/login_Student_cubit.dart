
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/loginRepos/login_student_repo.dart';
import 'login_Student_state.dart';


class LoginStudentCubit extends Cubit<LoginStudentState> {

  LoginStudentCubit(this.loginStudentRepo) : super(LoginStudentInitial());
  final LoginStudentRepo loginStudentRepo;

  Future<void> loginAsStudent(String email,String password)async
  {

    emit(LoginStudentLoading());
    var result =await loginStudentRepo.loginAsStudent(email, password);
    result.fold((failure){
      emit(LoginStudentFailure(failure.errmessage));
    }, (token){

      emit( LoginStudentSuccess(token));

    }
    );

  }


}
