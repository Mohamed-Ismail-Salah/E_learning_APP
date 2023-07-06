import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
 import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
 import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../../AdminAuthentication/presentation/view/widget/authentication_image.dart';
 import '../../view_models/signup_cubit/sign_up_Father_cubit.dart';
import 'body_Father_input_singup_widget.dart';

class SingUpFatherBody extends StatelessWidget{
  const SingUpFatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
     return  BlocConsumer<SignUpFatherCubit, SignUpFatherState>(
         listener: (context, state) {
           if (state is SignUpFatherLoading) {
             isLoading = true;
           } else if (state is SignUpFatherSuccess) {
             context.pushReplacement(AppRouter.kLoginFatherView);
             isLoading = false;
           }else if(state is SignUpFatherFailure){
             isLoading = false;
             showSnackBar(context, state.errMessage);

           }
         },builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child:SingleChildScrollView(
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children:  [
           const AuthenticationImage(),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(20), color: Colors.white),
               child: const  BodyInputFatherSingUPWidget(),
             ),
           ),

         ],
       ),
    ) ));
  }

}