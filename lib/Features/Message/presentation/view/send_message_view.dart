

import 'package:e_learning/Features/Message/presentation/view/widget/send_message_body.dart';
import 'package:flutter/material.dart';

class SendMessageView extends StatelessWidget{
  const SendMessageView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     body:SafeArea(child: SendMessageBody()) ,
   );
  }

}