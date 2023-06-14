import 'package:e_learning/Features/Authentication/presentation/view/widget/underlined_widget.dart';
import 'package:e_learning/Features/Authentication/presentation/view_models/signup_cubit/sign_up_admin_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
 import 'choose_singup_register_widget.dart';

class BodyInputSingUPWidget extends StatelessWidget {
  const BodyInputSingUPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String ? email;
    String ? name;
    String ? password;
    String ? phone;
    String ?type;
    String  ;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final typeController = TextEditingController();

    return Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child:Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: ChooseSingUpRegisterWidget(),
        ),
        const UnderLinedWidget(),



        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            keyboardType:TextInputType.name,
            ctrl: nameController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              name =value;
            },
            prefixIcon: const Icon(Icons.person),
            hintText: "name",
          ),
        ),


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
            hintText: "Email",
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            keyboardType:TextInputType.visiblePassword,
            ctrl: passwordController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
             password =value;
            },
            prefixIcon: const Icon(Icons.key),
            suffixIcon: const Icon(Icons.remove_red_eye),
            hintText: "Password",
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            keyboardType:TextInputType.phone,
            ctrl: phoneController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
               phone =value;
            },
            prefixIcon: const Icon(Icons.phone_android),
            hintText: "Phone",
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            keyboardType:TextInputType.name,
            ctrl: typeController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              type =value;
            },
            prefixIcon: const Icon(Icons.type_specimen),
            hintText: "type",
          ),
        ),





        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
          child: CustomButton(
            name: "Sign Up",
            onTap: () {
              if(formKey.currentState?.validate() == true){
                email = emailController.text;
                password = passwordController.text;
                 name = nameController.text;
               phone = phoneController.text;
                 type =typeController.text;
                BlocProvider.of<SignUpAdminCubit>(context).signUP(
                    name!,
                    email!,
                    password!,
                    phone!,
                    type!,
                   '1'
                );


              }
            },),
        )
      ],
    ));
  }
}