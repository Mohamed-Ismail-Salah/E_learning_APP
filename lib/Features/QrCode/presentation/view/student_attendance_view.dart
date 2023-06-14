import 'package:e_learning/Features/QrCode/presentation/view/widget/student_attendance_view_body.dart';
import 'package:flutter/material.dart';

class StudentAttendanceView extends StatelessWidget{
  const StudentAttendanceView({super.key});

  @override
  Widget build(BuildContext context) {
   return  const SafeArea(child: Scaffold(
     body: StudentAttendanceViewBody(),
   ));
  }

}