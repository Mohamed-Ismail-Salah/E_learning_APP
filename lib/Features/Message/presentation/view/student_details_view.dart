import 'package:e_learning/Features/Message/presentation/view/widget/StudentDetailsBody.dart';
import 'package:flutter/material.dart';
class StudentDetailsView extends StatelessWidget{
  const StudentDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: StudentDetailsBody()),
    );
  }

}