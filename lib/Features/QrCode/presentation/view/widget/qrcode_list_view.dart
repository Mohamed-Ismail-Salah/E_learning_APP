import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_item.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/Qrcode_cubit/qr_code_cubit.dart';

class QrcodeListView extends StatelessWidget {
  const QrcodeListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<QrCodeCubit,QrCodeState>(
        builder:(context,state) {
      if(state is GetQrCodeSuccess){
        return Flexible(
      child: ListView.builder(
        itemCount:  state.allQrCode.length,
        itemBuilder: (BuildContext context, int index) {

          return     QrCodeItem(
            code:   state.allQrCode[index].randomCode,
            time: state.allQrCode[index].createdAt,);
        },

      ),
        );
            }else if(state is GetQrCodeFailure){
        return    Center(child: Image.asset("assets/images/no-task.png",
          height:MediaQuery.of(context).size.height*.4 ,
        width:MediaQuery.of(context).size.width*.4 ,
        ));
      }else{
        return   const CircularProgressIndicator();
      }
        }

    );
  }
}

