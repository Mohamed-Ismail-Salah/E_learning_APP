import 'package:e_learning/Features/home/StudentHome/presentation/view/widget/student_home_body.dart';
import 'package:flutter/material.dart';

class StudentHomeView extends StatelessWidget{
  const StudentHomeView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     body: SafeArea(child: StudentHomeBody()),
   );
  }

}