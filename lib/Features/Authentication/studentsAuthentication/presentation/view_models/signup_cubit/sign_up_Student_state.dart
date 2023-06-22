part of 'sign_up_Student_cubit.dart';

@immutable
abstract class SignUpStudentState {}

class SignUpStudentInitial extends SignUpStudentState {}

class SignUpStudentLoading extends SignUpStudentState {}

class SignUpStudentFailure extends SignUpStudentState {
  final String errMessage;

  SignUpStudentFailure(this.errMessage);
}
class SignUpStudentSuccess extends SignUpStudentState
{

}
