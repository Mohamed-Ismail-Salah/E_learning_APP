
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/add_courses_model.dart';

abstract class AddLecturesRepo {
  Future<Failure?> addLectures(
      String title,
      File? file,
      String code,
      String link,

      );
}
