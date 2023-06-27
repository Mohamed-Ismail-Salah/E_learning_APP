

import 'package:dartz/dartz.dart';
import '../../../../../Core/error/faliure.dart';
import '../../models/get_Student_grades_modle.dart';

abstract class GetStudentGradesRepo {
  Future<Either<Failure,List<StudentGradesModel>>> getStudentGradesRepo(
      int courseId,
   int quizId,
      );
}
