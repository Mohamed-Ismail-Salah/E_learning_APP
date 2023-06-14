 import 'package:e_learning/Features/QrCode/presentation/view/widget/qrcode_list_view_body.dart';
import 'package:flutter/material.dart';

class  ListQrCodeView extends StatelessWidget{
  const ListQrCodeView({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:    SafeArea(child: QrCodeListBody())
    );
  }

}