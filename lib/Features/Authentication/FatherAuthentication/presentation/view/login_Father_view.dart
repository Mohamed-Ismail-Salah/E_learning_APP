import 'package:e_learning/Features/Authentication/FatherAuthentication/presentation/view/widget/login_Father_body.dart';
 import 'package:flutter/material.dart';

class LoginFatherView extends StatelessWidget {
  const LoginFatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: LoginFatherBody()),
    );
  }
}
