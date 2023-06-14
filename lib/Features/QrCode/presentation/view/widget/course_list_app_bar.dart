 import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class QrCodeListCourseAppBar extends StatelessWidget {
  const QrCodeListCourseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "All courses",
          style: Styles.textStyle25,
        ),
          const Spacer(),
          Image.asset("assets/images/Student Council.png"
          ,height: 50,
          width: 50,)
      
      ],
    );
  }
}