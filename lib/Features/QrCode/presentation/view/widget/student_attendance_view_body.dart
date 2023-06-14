import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_scanner.dart';
import 'package:e_learning/Features/QrCode/presentation/view/widget/student_attendance_list.dart';
 import 'package:flutter/material.dart';

class StudentAttendanceViewBody extends StatelessWidget{
  const StudentAttendanceViewBody({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
        children:     const [
          SizedBox(height: 20,),
Text("Student attendance"),
          SizedBox(height: 20,),
            StudentAttendanceList()
        ],
   );
  }

}

