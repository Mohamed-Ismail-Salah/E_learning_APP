
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/add_courses_model.dart';

abstract class UpdateCoursesRepo {
  Future<Either<Failure,AddCourseModel>> updateCourses(
      String id,
      String name,
      String level,
      String term,
      String hours,
      String code,
       File img,
      );
}
