
import 'dart:io';

import 'package:dartz/dartz.dart';

import '../../../../../../Core/error/faliure.dart';
import '../../models/add_courses_model.dart';
import '../../models/quiz_model.dart';

abstract class AddQuizRepo {
  Future<Failure?> addQuiz(

      QuizModel quizModel
      );
}