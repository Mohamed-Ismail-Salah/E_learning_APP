
import 'package:e_learning/Features/Authentication/AdminAuthentication/presentation/view/widget/underlined_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

 import '../../../../../../Core/widgets/custom_button.dart';
import '../../../../../../Core/widgets/custom_textformfield.dart';
 import '../../view_models/signup_cubit/sign_up_Student_cubit.dart';
import 'choose_Student_singup_register_widget.dart';

class BodyInputStudentSingUPWidget extends StatelessWidget {
  const BodyInputStudentSingUPWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String ? email;
    String ? name;
    String ? password;
    String ? phone;
    String ?fatherPhone;
     String?  universityEmail;
    String  ? departmentId;
    String   ?fatherEmail;
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final nameController = TextEditingController();
    final phoneController = TextEditingController();
    final fatherPhoneController = TextEditingController();
     final universityEmailController = TextEditingController();
    final   departmentIdController = TextEditingController();
    final   fatherEmailController = TextEditingController();
    return Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.always,
        child:Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const Padding(
          padding: EdgeInsets.all(15),
          child: ChooseStudentSingUpRegisterWidget(),
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
            keyboardType:TextInputType.emailAddress,
            ctrl: universityEmailController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              fatherEmail =value;
            },
            prefixIcon: const Icon(Icons.mail),
            hintText: "university Email",
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
            keyboardType:TextInputType.name,
            ctrl: departmentIdController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              password =value;
            },
            prefixIcon: const Icon(Icons.account_balance),
             hintText: "department Id",
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
            keyboardType:TextInputType.phone,
            ctrl: fatherPhoneController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              fatherPhone =value;
            },
            prefixIcon: const Icon(Icons.phone_android),
            hintText: "father Phone",
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: AppTextFormField(
            keyboardType:TextInputType.emailAddress,
            ctrl: fatherEmailController,
            validator:    (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onFieldSubmitted: (value){
              fatherEmail =value;
            },
            prefixIcon: const Icon(Icons.mail),
            hintText: "father Email",
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
                fatherPhone = fatherPhoneController.text;
                fatherEmail = fatherEmailController.text;
                universityEmail= universityEmailController.text;
                departmentId= departmentIdController.text;
                BlocProvider.of<SignUpStudentCubit>(context).signUpStudent(
                   name!,
                    email!,
                    password!,
                   password!,
                     phone!,
                   universityEmail!,
                   departmentId!,
                   fatherEmail!,
                     "ssn",
                   fatherPhone!,

                     );

              }
            },),
        )
      ],
    ));
  }
}