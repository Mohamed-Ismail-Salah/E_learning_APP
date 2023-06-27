 import 'package:e_learning/Features/courses/presentation/view_models/add_quiz_cubit/add_quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/quistion_model.dart';
import '../../../data/models/quiz_model.dart';
import '../../view_models/get_courses_cubit/getcourses_cubit.dart';

class AddQuestionWidget extends StatelessWidget {

  AddQuestionWidget({super.key,  required this.name,
    required this.maxTime,
    required this.maxDegree,
    required this.num} );
  int num;
  String name;
  int  maxDegree;
  int   maxTime;
  TextEditingController questionController = TextEditingController();
  TextEditingController option1Controller = TextEditingController();
  TextEditingController option2Controller = TextEditingController();
  TextEditingController option3Controller = TextEditingController();
  TextEditingController option4Controller = TextEditingController();
  TextEditingController option5Controller = TextEditingController();
  TextEditingController correctAnswerController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    List<QuestionDataModel> questionList = [];
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white60,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormQuestion(
                questionController: questionController,
                title: 'Question',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: option1Controller,
                title: 'Option 1',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: option2Controller,
                title: 'Option 2',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: option3Controller,
                title: 'Option 3',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: option4Controller,
                title: 'Option 4',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: option5Controller,
                title: 'Option 5',
              ),
              const SizedBox(height: 10),
              TextFormQuestion(
                questionController: correctAnswerController,
                title: 'Correct Answer',
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child:   Text(num <= questionList.length ? 'Finish' : 'Add Question'),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                     if(num>questionList.length) {
                      QuestionDataModel questionData = QuestionDataModel(
                        question: questionController.text,
                        answer: correctAnswerController.text,
                        option1: option1Controller.text,
                        option2: option2Controller.text,
                        option3: option3Controller.text,
                        option4: option4Controller.text,
                        option5: option5Controller.text,
                      );
                      questionList.add(questionData);
                      print( questionList.length);
                       _formKey.currentState!.reset();
                      questionController.clear();
                      option1Controller.clear();
                      option2Controller.clear();
                      option3Controller.clear();
                      option4Controller.clear();
                      option5Controller.clear();
                      correctAnswerController.clear();
                      if(num==questionList.length){
                        print( questionList.length);
                        int? id = BlocProvider.of<GetCoursesCubit>(context).getCourseId();
                        QuizModel quizModel = QuizModel(
                          name: name,
                          courseId: id!,
                          maxDegree: maxDegree,
                          maxTime: maxTime,
                          instructor: "body",
                          questions: questionList ,
                        );
                        BlocProvider.of<AddQuizCubit>(context).addQuiz(quizModel);

                      }
                     }
                  }
                },

              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFormQuestion extends StatelessWidget {
  final TextEditingController questionController;
  final String title;

  const TextFormQuestion({super.key,
    required this.questionController,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: questionController,
      decoration: InputDecoration(
        labelText: title,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $title';
        }
        return null; // Return null if the value is valid
      },
    );
  }
}
