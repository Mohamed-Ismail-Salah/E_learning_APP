import 'package:e_learning/Features/courses/presentation/view/widget/question_container.dart';
import 'package:flutter/material.dart';


class CreateQuizBody extends StatelessWidget {
  const CreateQuizBody({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
      child: Column(
        children:   const [
          QuestionContainer(),
    ],
      ),
    );
  }
}
