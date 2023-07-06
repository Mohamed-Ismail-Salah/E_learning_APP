import 'package:e_learning/Core/widgets/Show_Snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../AdminAuthentication/presentation/view/widget/authentication_image.dart';

 import '../../view_models/login_cubit/login_Father_cubit.dart';
import '../../view_models/login_cubit/login_Father_state.dart';
import 'body_Input_Father_login_widget.dart';

class LoginFatherBody extends StatelessWidget {
  const LoginFatherBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    final tokenStorage = TokenStorage();
    return  BlocConsumer<LoginFatherCubit, LoginFatherState>(
      listener: (context, state) async{
        if (state is LoginFatherLoading) {
          isLoading = true;
        } else if (state is LoginFatherSuccess) {
         context.pushReplacement(AppRouter.kFatherHomeView);
          await tokenStorage.saveToken(state.token );
          isLoading = false;
        }else if(state is LoginFatherFailure){
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
                child: const BodyInputFatherLoginWidget(),


              ),
            ),

           ],
        ),
      ),
    ),
    );
  }


}
