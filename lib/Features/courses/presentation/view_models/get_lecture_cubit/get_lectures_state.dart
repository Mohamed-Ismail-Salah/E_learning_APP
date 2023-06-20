part of 'get_lectures_cubit.dart';

@immutable
abstract class GetLecturesState {}

class GetLecturesInitial extends GetLecturesState {}
class GetLecturesLoading extends GetLecturesState {}

class GetLecturesFailure extends GetLecturesState {
  final String errMessage;

  GetLecturesFailure(this.errMessage);
}
class GetLecturesSuccess extends GetLecturesState {
  final List<LectureModel> allLecture;

  GetLecturesSuccess(this.allLecture);
}
