import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_view_body.dart';
import 'package:flutter/material.dart';

class QrCodeView extends StatelessWidget{
  const QrCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
body: QrCodeViewBody(),
    ));
  }

}