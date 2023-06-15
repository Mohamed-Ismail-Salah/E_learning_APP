part of 'get_student_cubit.dart';

@immutable
abstract class GetStudentState {}

class GetStudentInitial extends GetStudentState {}
class GetStudentLoading extends GetStudentState {}

class GetStudentFailure extends GetStudentState {
  final String errMessage;

  GetStudentFailure(this.errMessage);
}
class GetStudentSuccess extends GetStudentState {
  final List<StudentInfModel> studentInf;

  GetStudentSuccess(this.studentInf);
}
