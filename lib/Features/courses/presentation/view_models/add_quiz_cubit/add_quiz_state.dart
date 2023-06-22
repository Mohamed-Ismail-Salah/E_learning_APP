part of 'add_quiz_cubit.dart';

@immutable
abstract class AddQuizState {}

class AddQuizInitial extends AddQuizState {}
class AddQuizLoading extends AddQuizState {}

class AddQuizFailure extends AddQuizState {
  final String errMessage;

  AddQuizFailure(this.errMessage);
}
class AddQuizSuccess extends AddQuizState {

}
