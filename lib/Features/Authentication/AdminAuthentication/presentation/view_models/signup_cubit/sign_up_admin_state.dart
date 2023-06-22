part of 'sign_up_admin_cubit.dart';

@immutable
abstract class SignUpAdminState {}

class SignUpAdminInitial extends SignUpAdminState {}

class SignUpAdminLoading extends SignUpAdminState {}

class SignUpAdminFailure extends SignUpAdminState {
  final String errMessage;

  SignUpAdminFailure(this.errMessage);
}
class SignUpAdminSuccess extends SignUpAdminState
{
  final UserModel  user;

  SignUpAdminSuccess(this.user);
}
