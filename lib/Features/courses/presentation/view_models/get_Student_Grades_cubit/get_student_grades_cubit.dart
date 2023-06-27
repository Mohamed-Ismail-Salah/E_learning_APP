import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/models/get_Student_grades_modle.dart';
import '../../../data/repos/Student_grades_repo/get_Student_grades_repo.dart';

part 'get_student_grades_state.dart';

class GetStudentGradesCubit extends Cubit<GetStudentGradesState> {
  GetStudentGradesCubit(this.getStudentGradesRepo) : super(GetStudentGradesInitial());
  final  GetStudentGradesRepo  getStudentGradesRepo;

  Future<void> getallStudentGrades(int courseId,quizId )async
  {
    emit(GetStudentGradesLoading());

    var result =await getStudentGradesRepo.getStudentGradesRepo(courseId, quizId);
    result.fold((failure){
      emit(GetStudentGradesFailure(failure.errmessage));
    }, (allAssignment){
      emit( GetStudentGradesSuccess(allAssignment));

    }
    );

  }
}
