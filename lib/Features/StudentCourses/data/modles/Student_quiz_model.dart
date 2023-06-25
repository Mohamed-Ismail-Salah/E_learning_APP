class AllQuizModel {
  int id;
  String name;
  String instructor;
  String maxDegree;
  String maxTime;
  int courseId;
  String createdAt;
  String updatedAt;
  List<Question> questions;

  AllQuizModel({
    required this.id,
    required this.name,
    required this.instructor,
    required this.maxDegree,
    required this.maxTime,
    required this.courseId,
    required this.createdAt,
    required this.updatedAt,
    required this.questions,
  });

  factory AllQuizModel.fromJson(Map<String, dynamic> json) {
    return AllQuizModel(
      id: json['id'],
      name: json['name'],
      instructor: json['instructor'],
      maxDegree: json['max_degree'],
      maxTime: json['max_time'],
      courseId: json['course_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      questions: List<Question>.from(
        json['quistions'].map((question) => Question.fromJson(question)),
      ),
    );
  }
}

class Question {
  int id;
  String question;
  String answer;
  String option1;
  String option2;
  String option3;
  String option4;
  String option5;
  int allQuizId;
  String createdAt;
  String updatedAt;

  Question({
    required this.id,
    required this.question,
    required this.answer,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.option5,
    required this.allQuizId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      question: json['quistion'],
      answer: json['answer'],
      option1: json['option1'],
      option2: json['option2'],
      option3: json['option3'],
      option4: json['option4'],
      option5: json['option5'],
      allQuizId: json['all_quiz_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
