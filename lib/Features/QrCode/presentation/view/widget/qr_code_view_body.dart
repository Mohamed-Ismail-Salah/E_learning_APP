import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_scanner.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/widgets/custom_button.dart';

class QrCodeViewBody extends StatelessWidget{
  const QrCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: const EdgeInsets.all(40),
       child: Column(

         children: [
           Text('QR Scanner',style: Styles.textStyle25,),
             SizedBox(height: MediaQuery.of(context).size.height*.5/3,),
           const QrCodeScanner(),
           const Spacer(),
           CustomButton(
             onTap: () {
               context.pushReplacement(AppRouter.kListQrCodeView);
             },name: "Finish",),
         ],
       ),
     );
  }

}
