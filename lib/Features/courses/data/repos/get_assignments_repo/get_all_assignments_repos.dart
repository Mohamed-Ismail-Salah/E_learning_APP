

import 'package:dartz/dartz.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';

import '../../../../../Core/error/faliure.dart';

abstract class GetAssignmentsRepo {
  Future<Either<Failure,List<AssignmentModel>>> getAssignments(int id);
}
