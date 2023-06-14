
import 'package:flutter/material.dart';


import 'widget/all_course_body.dart';

class ListCourseQrCodeView extends StatelessWidget{
  const ListCourseQrCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return     const Scaffold(
      body: SafeArea(child: AllCourseBody()),

    );
  }

}