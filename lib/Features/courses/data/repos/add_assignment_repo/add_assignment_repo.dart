
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/add_courses_model.dart';

abstract class AddAssignmentRepo {
  Future<Failure?> addAssignment(
      String title,
       File? file,
      String courseId,
      String desc,

      );
}
