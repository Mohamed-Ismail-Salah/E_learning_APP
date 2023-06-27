import 'package:dartz/dartz.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/answer_modle.dart';

import '../../../../../../Core/error/faliure.dart';

abstract class AnswerQuistionsRepo {
  Future<Either<Failure,String>> answerQuistionsRepo(AnswerModel answerModel);
}
