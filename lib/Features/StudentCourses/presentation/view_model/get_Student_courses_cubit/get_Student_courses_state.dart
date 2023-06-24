part of 'getcourses_cubit.dart';

@immutable
abstract class GetStudentCoursesState {}

class GetStudentCoursesInitial extends GetStudentCoursesState {}
class GetStudentCoursesLoading extends GetStudentCoursesState {}

class GetStudentCoursesFailure extends GetStudentCoursesState {
  final String errMessage;

  GetStudentCoursesFailure(this.errMessage);
}
class GetStudentCoursesSuccess extends GetStudentCoursesState {
  final List<GetStudentCourseModel> allCourse;

  GetStudentCoursesSuccess(this.allCourse);
}
