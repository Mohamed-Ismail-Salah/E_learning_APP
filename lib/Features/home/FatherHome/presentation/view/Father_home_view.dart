import 'package:e_learning/Features/home/FatherHome/presentation/view/widget/Father_home_body.dart';
 import 'package:flutter/material.dart';

class FatherHomeView extends StatelessWidget{
  const FatherHomeView({super.key});

  @override
  Widget build(BuildContext context) {
   return const Scaffold(
     body: SafeArea(child: FatherHomeBody()),
   );
  }

}