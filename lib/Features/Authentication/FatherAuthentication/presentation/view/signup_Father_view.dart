 import 'package:e_learning/Features/Authentication/FatherAuthentication/presentation/view/widget/Singup_Father_Body.dart';
 import 'package:flutter/material.dart';

class SignupFatherView extends StatelessWidget {
  const SignupFatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: SingUpFatherBody()),
    );
  }
}
