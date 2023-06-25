part of 'getQuiz_cubit.dart';

@immutable
abstract class GetStudentQuizState {}

class GetStudentQuizInitial extends GetStudentQuizState {}
class GetStudentQuizLoading extends GetStudentQuizState {}

class GetStudentQuizFailure extends GetStudentQuizState {
  final String errMessage;

  GetStudentQuizFailure(this.errMessage);
}
class GetStudentQuizSuccess extends GetStudentQuizState {
  final List<AllQuizModel> allQuiz;

  GetStudentQuizSuccess(this.allQuiz);
}
