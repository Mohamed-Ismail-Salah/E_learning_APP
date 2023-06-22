import 'package:e_learning/Features/home/AdminHome/presentation/view/widget/admin_home_body.dart';
import 'package:flutter/material.dart';
class AdminHomeView extends StatelessWidget{
  const AdminHomeView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     body: SafeArea(child: AdminHomeBody()),
   );
  }

}