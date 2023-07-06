 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/Utils/styles.dart';


class ChooseFatherLoginRegisterWidget extends StatelessWidget {
  const ChooseFatherLoginRegisterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
            onPressed: () {},
            child: Text(
              "Login",
              style: Styles.textStyle25.copyWith(color: Colors.black),
            )),
        const Spacer(),
        TextButton(
          onPressed: () {
           context.pushReplacement(AppRouter.kSignupFatherView);
          },
          child: Text(
            "Sign Up",
            style: Styles.textStyle25,
          ),
        ),
      ],
    );
  }
}
