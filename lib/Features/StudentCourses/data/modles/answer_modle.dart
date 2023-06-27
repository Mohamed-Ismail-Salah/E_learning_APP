class AnswerModel {
  final int quizId;
  final int courseId;
  final List<AnswerQuestionModel> questions;

  AnswerModel({
    required this.quizId,
    required this.courseId,
    required this.questions,
  });

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>> questionsJson = questions.map((question) => question.toJson()).toList();

    return {
      "answer":{
        'quiz_id': quizId,
        'course_id': courseId,
        'quistions': questionsJson,
      }

    };
  }
}

class AnswerQuestionModel {
  final int id;
  final String answer;

  AnswerQuestionModel({
    required this.id,
    required this.answer,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'answer': answer,
    };
  }
}
