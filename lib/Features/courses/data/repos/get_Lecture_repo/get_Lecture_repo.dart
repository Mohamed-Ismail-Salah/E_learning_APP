

import 'package:dartz/dartz.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import 'package:e_learning/Features/courses/data/models/all_lecture.dart';

import '../../../../../Core/error/faliure.dart';

abstract class GetLectureRepo {
  Future<Either<Failure,List<LectureModel>>> getLecture( String  code);
}
