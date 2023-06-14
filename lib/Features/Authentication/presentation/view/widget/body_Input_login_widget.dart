import 'package:e_learning/Features/Authentication/presentation/view/widget/underlined_widget.dart';
import 'package:e_learning/Features/Authentication/presentation/view_models/login_cubit/login_admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import 'choose_login_register_widget.dart';

class BodyInputLoginWidget extends StatelessWidget {
  const BodyInputLoginWidget({super.key});


  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formKey = GlobalKey();
    String ? email;
    String ? password;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return  Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.always,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: ChooseLoginRegisterWidget(),
          ),
          const UnderLinedWidget(),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: AppTextFormField(
              keyboardType:TextInputType.emailAddress,
              ctrl: emailController,
              validator:    (data) {
      if (data!.isEmpty) {
      return 'Please enter some text';
      }
      },
              onFieldSubmitted: (value){
                email =value;
              },
              prefixIcon: const Icon(Icons.mail),
              hintText: "Username@fci.zu.edu.eg",
            ),
          ),



          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: AppTextFormField(
              ctrl: passwordController,

              validator:    (data) {
                if (data!.isEmpty) {
                  return 'Please enter some text';
                }
              },
              onFieldSubmitted: (value){
                password =value;
              },
              prefixIcon: const Icon(Icons.lock),
              suffixIcon: const Icon(Icons.remove_red_eye),
              hintText: ".......",
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
            child: CustomButton(
              name: "Login",
              onTap: () {

if(formKey.currentState?.validate() == true){
    email = emailController.text;
  password = passwordController.text;
  BlocProvider.of<LoginAdminCubit>(context).loginAsAdmin(email!, password!);


      }

              },),
          )
        ],
      ),
    );
  }
}