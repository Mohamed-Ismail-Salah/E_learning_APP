import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/courses/data/repos/add_quiz_repo/add_quiz_repo.dart';
import 'package:meta/meta.dart';

import '../../../data/models/quiz_model.dart';

part 'add_quiz_state.dart';

class AddQuizCubit extends Cubit<AddQuizState> {
  AddQuizCubit(this.addQuizRepo) : super(AddQuizInitial());
  final  AddQuizRepo addQuizRepo;

  Future<void>  addQuiz(QuizModel quizModel)async
  {
    emit( AddQuizLoading());

    var result =  await addQuizRepo.addQuiz(quizModel);
    if (result != null) {
      emit(AddQuizFailure(result.errmessage));
    } else {
      emit(AddQuizSuccess());
    }
  }
}
