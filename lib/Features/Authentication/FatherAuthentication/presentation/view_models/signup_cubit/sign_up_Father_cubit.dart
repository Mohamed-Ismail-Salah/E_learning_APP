import 'package:bloc/bloc.dart';
 import 'package:meta/meta.dart';

import '../../../data/repos/signupRepos/signup_Father_repo.dart';

part 'sign_up_Father_state.dart';

class SignUpFatherCubit extends Cubit<SignUpFatherState> {
  SignUpFatherCubit(this.signUpFatherRepo) : super(SignUpFatherInitial());
  final SignUpFatherRepo signUpFatherRepo;
  Future<void> signUPFather(String name, String email, String password, String phone )async
  {
    emit(SignUpFatherLoading());
    var result =await signUpFatherRepo.signUpAsFather(name, email, password, phone);
    if (result != null) {
      emit(SignUpFatherFailure(result.errmessage));
    } else {
      emit(SignUpFatherSuccess());
    }
  }
}
