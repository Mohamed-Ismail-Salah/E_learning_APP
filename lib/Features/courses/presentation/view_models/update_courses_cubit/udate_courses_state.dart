part of 'update_courses_cubit.dart';

@immutable
abstract class UpdateCoursesState {}

class UpdateCoursesInitial extends UpdateCoursesState {}
class UpdateCoursesLoading extends UpdateCoursesState {}

class UpdateCoursesFailure extends UpdateCoursesState {
  final String errMessage;

  UpdateCoursesFailure(this.errMessage);
}
class UpdateCoursesSuccess extends UpdateCoursesState {
  final AddCourseModel  course;

  UpdateCoursesSuccess(this.course);
}
