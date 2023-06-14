import 'package:e_learning/Features/courses/presentation/view/widget/add_course_body.dart';
import 'package:flutter/material.dart';

class  AddCourseView extends StatelessWidget{
  const AddCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body:  SafeArea(child: AddCourseBody()),
    );
  }

}