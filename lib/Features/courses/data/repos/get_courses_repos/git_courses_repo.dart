import 'package:dartz/dartz.dart';
import 'package:e_learning/Features/courses/data/models/get_all_courses.dart';

import '../../../../../Core/error/faliure.dart';

abstract class GetCoursesRepo {
  Future<Either<Failure,List<GetCourseModel>>> getCourses();
}
