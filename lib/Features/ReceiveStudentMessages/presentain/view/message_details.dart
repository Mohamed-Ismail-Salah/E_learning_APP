import 'package:e_learning/Features/ReceiveStudentMessages/data/model/Messages_Data_modle.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view/widget/MessageDetailsBody.dart';
import 'package:flutter/material.dart';

class MessageDetailsView extends StatelessWidget{
    MessageDetailsView({super.key,required this.messageDataModel});
MessageDataModel messageDataModel;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body:  SafeArea(child: MessageDetailsBody(messageDataModel: messageDataModel,)),
    );
  }

}