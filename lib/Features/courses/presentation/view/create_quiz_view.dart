import 'package:e_learning/Features/courses/presentation/view/widget/create_quiz_body.dart';
import 'package:flutter/material.dart';

class CreateQuizView extends StatelessWidget{
  const CreateQuizView({super.key});

  @override
  Widget build(BuildContext context) {
     return   const Scaffold(
       body: SafeArea(child: CreateQuizBody()),
     );
  }

}