part of 'get_assignment_cubit.dart';

@immutable
abstract class GetAssignmentState {}

class GetAssignmentInitial extends GetAssignmentState {}
class GetAssignmentLoading extends GetAssignmentState {}

class GetAssignmentFailure extends GetAssignmentState {
  final String errMessage;

  GetAssignmentFailure(this.errMessage);
}
class GetAssignmentSuccess extends GetAssignmentState {
  final List<AssignmentModel> allAssignment;

  GetAssignmentSuccess(this.allAssignment);
}
