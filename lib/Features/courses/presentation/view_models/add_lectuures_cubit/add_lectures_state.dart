part of 'add_lectures_cubit.dart';

@immutable
abstract class AddLecturesState {}

class AddLecturesInitial extends AddLecturesState {}

class AddLecturesLoading extends AddLecturesState {}

class AddLecturesFailure extends AddLecturesState {
  final String errMessage;

  AddLecturesFailure(this.errMessage);
}
class AddLecturesSuccess extends AddLecturesState {

}
