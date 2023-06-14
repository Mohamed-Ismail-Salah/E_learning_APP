part of 'getcourses_cubit.dart';

@immutable
abstract class GetCoursesState {}

class GetCoursesInitial extends GetCoursesState {}
class GetCoursesLoading extends GetCoursesState {}

class GetCoursesFailure extends GetCoursesState {
  final String errMessage;

  GetCoursesFailure(this.errMessage);
}
class GetCoursesSuccess extends GetCoursesState {
  final List<GetCourseModel> allCourse;

  GetCoursesSuccess(this.allCourse);
}
