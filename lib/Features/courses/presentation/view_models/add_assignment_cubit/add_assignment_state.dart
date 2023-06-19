part of 'add_assignment_cubit.dart';

@immutable
abstract class AddAssignmentState {}

class AddAssignmentInitial extends AddAssignmentState {}

class AddAssignmentLoading extends AddAssignmentState {}

class AddAssignmentFailure extends AddAssignmentState {
  final String errMessage;

  AddAssignmentFailure(this.errMessage);
}
class AddAssignmentSuccess extends AddAssignmentState {

}
