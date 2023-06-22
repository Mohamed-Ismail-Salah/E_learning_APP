import 'package:e_learning/Features/courses/data/models/quistion_model.dart';

class QuizModel {
  String name;
  int courseId;
  int maxDegree;
  int maxTime;
  String instructor;
  List<QuestionDataModel> questions;

  QuizModel({
    required this.name,
    required this.courseId,
    required this.maxDegree,
    required this.maxTime,
    required this.instructor,
    required this.questions,
  });

  Map<String, dynamic> toJson() {
    return {
    'quiz': {
      'name': name,
      'course_id': courseId,
      'max_degree': maxDegree,
      'max_time': maxTime,
      'instructor': instructor,
      'quistion': questions.map((question) => question.toJson()).toList(),
    }};
  }
}