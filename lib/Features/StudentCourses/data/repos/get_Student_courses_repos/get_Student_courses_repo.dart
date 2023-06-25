import 'package:dartz/dartz.dart';

import '../../../../../Core/error/faliure.dart';
import '../../modles/get_Student_all_courses.dart';

abstract class GetStudentCoursesRepo {
  Future<Either<Failure,List<GetStudentCourseModel>>> getStudentCourses(String level,String term);
}
