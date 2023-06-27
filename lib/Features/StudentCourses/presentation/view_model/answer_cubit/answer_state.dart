part of 'answer_cubit.dart';

@immutable
abstract class AnswerState {}

class AnswerInitial extends AnswerState {}
class AnswerLoading extends AnswerState {}

class AnswerFailure extends AnswerState {
  final String errMessage;

  AnswerFailure(this.errMessage);
}
class AnswerSuccess extends AnswerState {
  final String examDegree;

  AnswerSuccess(this.examDegree);
}