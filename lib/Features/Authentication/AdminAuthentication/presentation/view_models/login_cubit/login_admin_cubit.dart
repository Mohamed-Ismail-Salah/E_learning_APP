
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/loginRepos/login_admin_repo.dart';
import 'login_admin_state.dart';


class LoginAdminCubit extends Cubit<LoginAdminState> {

  LoginAdminCubit(this.loginAdminRepo) : super(LoginAdminInitial());
  final LoginAdminRepo loginAdminRepo;

  Future<void> loginAsAdmin(String email,String password)async
  {

    emit(LoginAdminLoading());
    var result =await loginAdminRepo.loginAsAdmin(email, password);
    result.fold((failure){
      emit(LoginAdminFailure(failure.errmessage));
    }, (token){

      emit( LoginAdminSuccess(token));

    }
    );

  }


}
