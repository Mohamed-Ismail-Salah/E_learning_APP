import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Utils/colors.dart';
import '../../../../../Core/Utils/styles.dart';

class AddAppBarQrCode extends StatelessWidget {
  const AddAppBarQrCode({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Text(
            "QR  Generator",
            style: Styles.textStyle25,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                onPressed: () {
                  context.pushReplacement(AppRouter.kAddQrCodeView);
                },
                icon: Icon(
                  Icons.add_box_rounded,
                  color: AppColor.secondaryColor,
                  size: 50,
                )),
          )
        ],
      ),
    );
  }
}
