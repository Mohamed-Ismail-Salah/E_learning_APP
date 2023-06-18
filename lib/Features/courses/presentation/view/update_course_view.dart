 import 'package:e_learning/Features/courses/presentation/view/widget/update_course_body.dart';
import 'package:flutter/material.dart';

class  UpdateCourseView extends StatelessWidget{
  const UpdateCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body:  SafeArea(child:  UpdateCourseBody()),
    );
  }

}