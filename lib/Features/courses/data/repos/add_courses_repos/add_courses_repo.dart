
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/add_courses_model.dart';

abstract class AddCoursesRepo {
  Future<Either<Failure,AddCourseModel>> addCourses(
      String name,
      String level,
      String term,
      String hours,
      String code,
       File img,
      );
}
