import 'package:e_learning/Features/Authentication/presentation/view/widget/underlined_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_textformfield.dart';
import 'choose_login_register_widget.dart';

class BodyInputLoginWidget extends StatelessWidget {
  const BodyInputLoginWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: ChooseLoginRegisterWidget(),
        ),
        const UnderLinedWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.mail),
            hintText: "Username@fci.zu.edu.eg",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: const Icon(Icons.remove_red_eye),
            hintText: ".......",
          ),
        )
      ],
    );
  }
}