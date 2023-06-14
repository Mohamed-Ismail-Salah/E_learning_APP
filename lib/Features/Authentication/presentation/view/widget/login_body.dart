import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/widgets/Show_Snackbar.dart';
import 'package:e_learning/Features/Authentication/presentation/view_models/login_cubit/login_admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
 import '../../../../../Core/Utils/app_shared_preferences.dart';
import '../../view_models/login_cubit/login_admin_state.dart';
import 'authentication_image.dart';
import 'body_Input_login_widget.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final tokenStorage = TokenStorage();
    return  BlocConsumer<LoginAdminCubit, LoginAdminState>(
      listener: (context, state) async{
        if (state is LoginAdminLoading) {
          isLoading = true;
        } else if (state is LoginAdminSuccess) {
          context.pushReplacement(AppRouter.kHomeView);
          await tokenStorage.saveToken(state.token );
          isLoading = false;
        }else if(state is LoginAdminFailure){
          isLoading = false;
showSnackBar(context, state.errMessage);

        }
      },  builder:(context,state)=> ModalProgressHUD(
      inAsyncCall: isLoading,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const AuthenticationImage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: const BodyInputLoginWidget(

                ),


              ),
            ),

           ],
        ),
      ),
    ),
    );
  }


}
