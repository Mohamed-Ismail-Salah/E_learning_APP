import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
 import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
 import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../../AdminAuthentication/presentation/view/widget/authentication_image.dart';
 import '../../view_models/signup_cubit/sign_up_Student_cubit.dart';
import 'body_Student_input_singup_widget.dart';

class SingUpStudentBody extends StatelessWidget{
  const SingUpStudentBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
     return  BlocConsumer<SignUpStudentCubit, SignUpStudentState>(
         listener: (context, state) {
           if (state is SignUpStudentLoading) {
             isLoading = true;
           } else if (state is SignUpStudentSuccess) {
             context.pushReplacement(AppRouter.kLoginStudentView);
             isLoading = false;
           }else if(state is SignUpStudentFailure){
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
               child: const  BodyInputStudentSingUPWidget(),
             ),
           ),

         ],
       ),
    ) ));
  }

}