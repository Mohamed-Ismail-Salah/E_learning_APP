import 'package:dio/dio.dart';
import 'package:e_learning/Features/Message/presentation/view/widget/send_message_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Utils/api_service.dart';
import '../../data/send_message/send_message_imp.dart';
import '../view_models/send_message_cubit/send_message_cubit.dart';

class SendMessageView extends StatelessWidget{
    SendMessageView({super.key

    ,required this.sendTo});
  String sendTo;
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
       create:(context) =>  SendMessageCubit(SendMessageImp(ApiService(Dio()))),
    child:   Scaffold(
     body:SafeArea(child: SendMessageBody(sendTo:sendTo,)) ,
   )
   );
  }

}