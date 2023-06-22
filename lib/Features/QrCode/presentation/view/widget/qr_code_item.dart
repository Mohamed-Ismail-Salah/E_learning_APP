import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../view_models/Qrcode_cubit/qr_code_cubit.dart';

class QrCodeItem extends StatelessWidget {
    QrCodeItem({
    required this.time,
      required this.code,
    super.key,

  });
DateTime time;
String code;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        BlocProvider.of<QrCodeCubit>(context).getStudentAttendance(code);
        context.push(AppRouter.kStudentAttendanceView);
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              children: [
                Image.asset("assets/images/Vector.png", ),
                const SizedBox(width: 15,),
                Column(
                  children: [
                    Text("QR Code ",style: Styles.textStyle25,),
                    const SizedBox(height: 10,),
                    Row(children:   [
                      const Icon(Icons.access_time)
                      ,Text("$time")
                    ],)
                  ],
                ),
                const Spacer()
                ,IconButton(onPressed:  (){}, icon:  const Icon(Icons.delete,color: Colors.red,size: 40,))
              ],
            ),
          ),
          const Divider(
            color: Colors.black,  // Customize the color of the line
            thickness: 1.0,       // Customize the thickness of the line
          )
        ],
      ),
    );
  }
}