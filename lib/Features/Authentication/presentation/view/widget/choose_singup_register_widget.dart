import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';

class ChooseSingUpRegisterWidget extends StatelessWidget {
  const ChooseSingUpRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {
              context.pushReplacement(AppRouter.kLoginView);
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
