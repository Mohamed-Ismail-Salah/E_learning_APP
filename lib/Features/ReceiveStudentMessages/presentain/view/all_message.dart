import 'package:dio/dio.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/data/repos/get_message_data_repos/get_message_imp.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view/widget/AllMessageBody.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view_model/get_message_data_cubit/get_message_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';

class AllMessageView extends StatelessWidget{
  const AllMessageView({super.key});

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) => GetMessageDataCubit( GetMessageDataImp(ApiService(Dio())))..getAllMessage(),
    child: const Scaffold(
body: SafeArea(child: AllMessageBody()),
    ) );
  }


}