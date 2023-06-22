import 'package:flutter/material.dart';

import '../../../../../../Core/Utils/colors.dart';


class UnderLinedWidget extends StatelessWidget {
  const UnderLinedWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 2.5,
        width: MediaQuery.of(context).size.width * .5,
        child: Container(
          margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 5.0,
          color: AppColor.splashColor,
        ),
      ),
    );
  }
}
