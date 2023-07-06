import 'package:e_learning/Features/QrCode/presentation/view/widget/student_attendance_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../view_models/Qrcode_cubit/qr_code_cubit.dart';

class StudentAttendanceView extends StatelessWidget{
  const StudentAttendanceView({super.key});

  @override

  Widget build(BuildContext context) {

   return  const SafeArea(child: Scaffold(
     body: StudentAttendanceViewBody(),
   ));
  }

}