part of 'get_student_grades_cubit.dart';

@immutable
abstract class GetStudentGradesState {}

class GetStudentGradesInitial extends GetStudentGradesState {}
class  GetStudentGradesLoading extends GetStudentGradesState {}

class  GetStudentGradesFailure extends GetStudentGradesState {
  final String errMessage;

  GetStudentGradesFailure(this.errMessage);
}
class  GetStudentGradesSuccess extends GetStudentGradesState {
  final List<StudentGradesModel>  allStudentGrades;

  GetStudentGradesSuccess(this.allStudentGrades);
}
