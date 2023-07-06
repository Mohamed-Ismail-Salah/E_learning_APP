part of 'sign_up_Father_cubit.dart';

@immutable
abstract class SignUpFatherState {}

class SignUpFatherInitial extends SignUpFatherState {}

class SignUpFatherLoading extends SignUpFatherState {}

class SignUpFatherFailure extends SignUpFatherState {
  final String errMessage;

  SignUpFatherFailure(this.errMessage);
}
class SignUpFatherSuccess extends SignUpFatherState{}
