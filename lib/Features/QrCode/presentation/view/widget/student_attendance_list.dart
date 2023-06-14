import 'package:e_learning/Features/QrCode/presentation/view/widget/student_attendance_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/Qrcode_cubit/qr_code_cubit.dart';

class StudentAttendanceList extends StatelessWidget {
  const StudentAttendanceList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QrCodeCubit,QrCodeState>(
        builder:(context,state) {
      if(state is  StudentAttendanceSuccess){
        return  Flexible(
      child: ListView.builder(
        itemCount: state.allStudentAttendance.length,
        itemBuilder: (BuildContext context, int index) {
          return   StudentAttendanceItem(name:  state.allStudentAttendance[index]["user"]);
        },),
    );
      }else if(state is StudentAttendanceFailure){
        return    Center(child: Image.asset("assets/images/no-task.png",
          height:MediaQuery.of(context).size.height*.4 ,
          width:MediaQuery.of(context).size.width*.4 ,
        ));
      }else{
        return   const Center(child:CircularProgressIndicator());
      }
        }

    );
  }
}

