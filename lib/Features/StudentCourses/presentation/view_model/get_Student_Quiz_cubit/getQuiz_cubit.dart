import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/Student_quiz_model.dart';
import 'package:flutter/material.dart';
import '../../../data/repos/get_Student_quiz_repos/get_Student_quiz_repo.dart';
part 'get_Student_Quiz_state.dart';

class GetStudentQuizCubit extends Cubit<GetStudentQuizState> {
  GetStudentQuizCubit(this.getStudentQuizRepo) : super(GetStudentQuizInitial());
   final GetStudentQuizRepo getStudentQuizRepo;
  int? studentCourseId;

  void setStudentCourseId(int id) {
    studentCourseId = id;
  }

  int? getStudentCourseId() {
    return studentCourseId;
  }

  Future<void> getAllQuiz(String id)async
  {
    emit(GetStudentQuizLoading());
    var result =await getStudentQuizRepo.getStudentQuizRepo(id);
    result.fold((failure){
      emit(GetStudentQuizFailure(failure.errmessage));
    }, (allQuiz){
      emit(GetStudentQuizSuccess(allQuiz));

    }
    );

  }
}
