import 'package:dartz/dartz.dart';

import '../../../../../Core/error/faliure.dart';
import '../../modles/Student_quiz_model.dart';


abstract class GetStudentQuizRepo {
  Future<Either<Failure,List<AllQuizModel>>> getStudentQuizRepo(String id);
}
