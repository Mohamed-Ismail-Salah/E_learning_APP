import 'package:e_learning/Features/StudentCourses/presentation/view/widget/Student_course_data_body.dart';
 import 'package:flutter/material.dart';

class StudentCourseDataView extends StatelessWidget{
  const StudentCourseDataView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: SafeArea(child: StudentCourseDataBody()) ,
    );
  }

}