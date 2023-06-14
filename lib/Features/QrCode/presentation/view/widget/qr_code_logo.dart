import 'package:flutter/material.dart';

class QrCodeLogo extends StatelessWidget {
  const QrCodeLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height*.3,
        width: MediaQuery.of(context).size.width*.7,
        decoration:   BoxDecoration(
          borderRadius: BorderRadius.circular(20),
            color: Colors.white

        ),
        child: Image.asset("assets/images/Vector.png",),
      ),
    );
  }
}