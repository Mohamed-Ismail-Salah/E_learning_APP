import 'package:e_learning/Features/courses/presentation/view/widget/course_data_body.dart';
import 'package:flutter/material.dart';

class CourseDataView extends StatelessWidget{
  const CourseDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: SafeArea(child: CourseDataBody()) ,
    );
  }

}