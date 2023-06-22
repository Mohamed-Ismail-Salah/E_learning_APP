 import 'package:e_learning/Features/Authentication/studentsAuthentication/presentation/view/widget/Singup_Student_Body.dart';
import 'package:flutter/material.dart';

class SignupStudentView extends StatelessWidget {
  const SignupStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: SingUpStudentBody()),
    );
  }
}
