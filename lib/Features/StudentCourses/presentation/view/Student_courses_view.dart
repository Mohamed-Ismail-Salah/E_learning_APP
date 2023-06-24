 import 'package:e_learning/Features/StudentCourses/presentation/view/widget/Student_courses_body.dart';
import 'package:flutter/material.dart';

class StudentCoursesView extends StatelessWidget{
  const StudentCoursesView({super.key});

  @override
  Widget build(BuildContext context) {
     return const Scaffold(
       body:  SafeArea(child: StudentCoursesBody()),
     );
  }

}