import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/modles/answer_modle.dart';
import '../../../data/repos/Answer_Question_repos/Answer_Question_repos.dart';

part 'answer_state.dart';

class AnswerCubit extends Cubit<AnswerState> {
  AnswerCubit(this.answerQuistionsRepo) : super(AnswerInitial());
   final AnswerQuistionsRepo  answerQuistionsRepo;
  List<AnswerQuestionModel>? listAnswerQuestionModel = [];

  void setAnswer(AnswerQuestionModel answerQuestionModel, int index) {
    if (index >= listAnswerQuestionModel!.length) {
      listAnswerQuestionModel!.add(answerQuestionModel);
    } else {
      listAnswerQuestionModel![index] = answerQuestionModel;
    }
  }


  List<AnswerQuestionModel>? getAnswer() {
    return listAnswerQuestionModel;
  }
  Future<void> answerQuistions(
      AnswerModel answerModel
      )async
  {
    emit(AnswerLoading());

    var result =await answerQuistionsRepo.answerQuistionsRepo(answerModel);
    result.fold((failure){
      emit(AnswerFailure(failure.errmessage));
    }, (examDegree){
      emit( AnswerSuccess(examDegree));

    }
    );

  }
}