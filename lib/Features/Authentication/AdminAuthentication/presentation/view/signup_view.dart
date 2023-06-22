 import 'package:e_learning/Features/Authentication/AdminAuthentication/presentation/view/widget/SingupBody.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: SingUpBody()),
    );
  }
}
