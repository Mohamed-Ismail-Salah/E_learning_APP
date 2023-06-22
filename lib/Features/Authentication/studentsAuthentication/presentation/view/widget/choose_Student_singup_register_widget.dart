import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/styles.dart';


class ChooseStudentSingUpRegisterWidget extends StatelessWidget {
  const ChooseStudentSingUpRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              context.pushReplacement(AppRouter.kLoginStudentView);
            },
            child: Text(
              "Login",
              style: Styles.textStyle25 ,
            )),
        const Spacer(),
        TextButton(
          onPressed: () {

          },
          child: Text(
            "Sign Up",
            style: Styles.textStyle25.copyWith(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
