import 'package:e_learning/Features/Authentication/presentation/view/widget/underlined_widget.dart';
import 'package:flutter/material.dart';

 import '../../../../../Core/widgets/custom_textformfield.dart';
 import 'choose_singup_register_widget.dart';

class BodyInputSingUPWidget extends StatelessWidget {
  const BodyInputSingUPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: ChooseSingUpRegisterWidget(),
        ),
        const UnderLinedWidget(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.person),
            hintText: "name",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.mail),
            hintText: "Email",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.key),
            suffixIcon: const Icon(Icons.remove_red_eye),
            hintText: "Password",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            onFieldSubmitted: (value){},
            prefixIcon: const Icon(Icons.phone_android),
            hintText: "Phone",
          ),
        ),

      ],
    );
  }
}