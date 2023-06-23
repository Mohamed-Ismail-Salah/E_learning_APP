
 import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/Admin_Profile_view_body.dart';
import 'package:e_learning/Features/profile/StudentProfile/presentation/view/widget/Student_Profile_view_body.dart';
import 'package:flutter/material.dart';

class StudentProfileView extends StatelessWidget{
  const StudentProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: StudentProfileViewBody()),
    );
  }

}