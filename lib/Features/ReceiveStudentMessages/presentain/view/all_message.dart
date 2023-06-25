import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view/widget/AllMessageBody.dart';
import 'package:flutter/material.dart';

class AllMessageView extends StatelessWidget{
  const AllMessageView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body: SafeArea(child: AllMessageBody()),
    );
  }


}