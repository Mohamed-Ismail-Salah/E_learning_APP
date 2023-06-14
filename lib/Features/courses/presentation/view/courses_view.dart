 import 'package:e_learning/Features/courses/presentation/view/widget/courses_body.dart';
import 'package:flutter/material.dart';

class CoursesView extends StatelessWidget{
  const CoursesView({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
       body:  SafeArea(child: CoursesBody()),
     );
  }

}