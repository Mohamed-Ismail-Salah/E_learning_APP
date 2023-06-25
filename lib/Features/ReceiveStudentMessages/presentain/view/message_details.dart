import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view/widget/MessageDetailsBody.dart';
import 'package:flutter/material.dart';

class MessageDetailsView extends StatelessWidget{
  const MessageDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: MessageDetailsBody()),
    );
  }

}