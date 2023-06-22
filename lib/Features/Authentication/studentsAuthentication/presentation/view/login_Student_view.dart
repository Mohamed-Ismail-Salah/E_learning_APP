import 'package:e_learning/Features/Authentication/studentsAuthentication/presentation/view/widget/login_Student_body.dart';
import 'package:flutter/material.dart';

class LoginStudentView extends StatelessWidget {
  const LoginStudentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LoginStudentBody()),
    );
  }
}
