
class QuestionDataModel {
  String question;
  String answer;
  String option1;
  String option2;
  String option3;
  String option4;
  String option5;

  QuestionDataModel({
    required this.question,
    required this.answer,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.option5,
  });

  Map<String, dynamic> toJson() {
    return {
      'quistion': question,
      'answer': answer,
      'option1': option1,
      'option2': option2,
      'option3': option3,
      'option4': option4,
      'option5': option5,
    };
  }
}

