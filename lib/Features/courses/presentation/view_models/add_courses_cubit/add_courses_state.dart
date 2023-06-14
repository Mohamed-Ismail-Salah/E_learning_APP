part of 'add_courses_cubit.dart';

@immutable
abstract class AddCoursesState {}

class AddCoursesInitial extends AddCoursesState {}
class AddCoursesLoading extends AddCoursesState {}

class AddCoursesFailure extends AddCoursesState {
  final String errMessage;

  AddCoursesFailure(this.errMessage);
}
class AddCoursesSuccess extends AddCoursesState {
  final AddCourseModel  course;

  AddCoursesSuccess(this.course);
}
