import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/widgets/custom_button.dart';

class MessageButtons extends StatelessWidget {
  const MessageButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        CustomButton(
            textStyle: Styles.textStyle17.copyWith(color: Colors.black),
            name: "Send Message to student",
            onTap:  (){}),
        const SizedBox(height: 20,),
        CustomButton(
            textStyle: Styles.textStyle17.copyWith(color: Colors.black),
            name: "Send Message to parent",
            onTap:  (){}),
      ],
    );
  }
}