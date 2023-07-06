
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/loginRepos/login_father_repo.dart';
import 'login_Father_state.dart';



class LoginFatherCubit extends Cubit<LoginFatherState> {

  LoginFatherCubit(this.loginFatherRepo) : super(LoginFatherInitial());
  final LoginFatherRepo  loginFatherRepo;

  Future<void> loginAsFather(String email,String password)async
  {

    emit(LoginFatherLoading());
    var result =await loginFatherRepo.loginAsFather(email, password);
    result.fold((failure){
      emit(LoginFatherFailure(failure.errmessage));
    }, (token){

      emit( LoginFatherSuccess(token));

    }
    );

  }


}
