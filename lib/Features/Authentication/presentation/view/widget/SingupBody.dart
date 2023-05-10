
import 'package:e_learning/Features/Authentication/presentation/view/widget/body_input_singup_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_button.dart';
import 'authentication_image.dart';

class SingUpBody extends StatelessWidget{
  const SingUpBody({super.key});

  @override
  Widget build(BuildContext context) {
     return SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children:  [
           const AuthenticationImage(),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), color: Colors.white),
               child: const  BodyInputSingUPWidget(),
             ),
           ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
             child: CustomButton(
               name: "Sign Up",
               onTap: () {  },),
           )
         ],
       ),
     );
  }

}