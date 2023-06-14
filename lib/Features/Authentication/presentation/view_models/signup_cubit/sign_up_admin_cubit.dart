import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/Authentication/data/models/userModel.dart';
import 'package:meta/meta.dart';
import '../../../data/repos/signupRepos/signup_admin_repo.dart';
part 'sign_up_admin_state.dart';

class SignUpAdminCubit extends Cubit<SignUpAdminState> {
  SignUpAdminCubit(this.signUpAdminRepo) : super(SignUpAdminInitial());
  final SignUpAdminRepo signUpAdminRepo;
  Future<void> signUP(String name, String email, String password, String phone, String type, String departmentId)async
  {
    emit(SignUpAdminLoading());
    var result =await signUpAdminRepo.signUpAsAdmin(name, email, password, phone, type, departmentId);
    result.fold((failure){
      emit(SignUpAdminFailure(failure.errmessage));
    }, (user){
      emit( SignUpAdminSuccess(user));

    }
    );

  }



}
