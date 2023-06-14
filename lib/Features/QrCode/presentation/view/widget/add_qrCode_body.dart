import 'package:e_learning/Core/Utils/colors.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_input.dart';
import 'package:e_learning/Features/QrCode/presentation/view/widget/qr_code_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import '../../view_models/add_QrCode_cubit/add_qr_code_cubit.dart';


class AddQrCodeBody extends StatelessWidget{
  const AddQrCodeBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return  BlocConsumer<AddQrCodeCubit, AddQrCodeState>(
        listener: (context, state) async{
      if (state is AddQrCodeLoading) {
        isLoading = true;
      } else if (state is AddQrCodeSuccess) {
        context.pushReplacement(AppRouter.kQrCodeView);

        isLoading = false;
      }else if(state is AddQrCodeFailure){
        isLoading = false;
        showSnackBar(context, state.errMessage);

      }
    },  builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child: SingleChildScrollView(
      child: Column(
 children: [
  Text("QR Scanner",style: Styles.textStyle25,),
   const SizedBox(height: 20,),
   const QrCodeLogo(),
const SizedBox(height: 10,),
   Text("QR Code name",style: Styles.textStyle25.copyWith(color: AppColor.secondaryColor),),
   const SizedBox(height: 10,),
const QrCodeInput(),

],
    )

    )
    ),
    );
  }

}


