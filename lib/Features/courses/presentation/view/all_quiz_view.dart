 import 'package:e_learning/Features/courses/presentation/view/widget/AllQuizBody.dart';
import 'package:flutter/material.dart';

class AllQuizView extends StatelessWidget{
  const AllQuizView({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Scaffold(
body: SafeArea(child: AllQuizBody()),
    );
  }

}