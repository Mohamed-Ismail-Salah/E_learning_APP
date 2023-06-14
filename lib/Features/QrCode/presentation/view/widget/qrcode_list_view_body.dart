
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/QrCode/presentation/view/widget/qrcode_list_view.dart';
import 'package:flutter/material.dart';

 import 'app_abb_Bar_qrcode.dart';

class QrCodeListBody extends StatelessWidget{
  const QrCodeListBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AddAppBarQrCode(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text('Select which QR code You Want:',style:Styles.textStyle25,),
        ),

          const QrcodeListView()

      ] );
  }

}



