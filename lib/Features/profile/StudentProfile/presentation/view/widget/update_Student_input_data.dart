import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../Core/widgets/custom_button.dart';
import '../../../../../../Core/widgets/custom_textformfield.dart';
import '../../../data/models/profile_Student_info_model.dart';
import '../../view_models/upate_profile_cubit/update_Student_profile_cubit.dart';

class UpdateStudentInputData extends StatelessWidget {
  const UpdateStudentInputData({
    super.key,
    required this.profileInfoModel,
  });

  final ProfileStudentInfoModel profileInfoModel;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String? name=profileInfoModel.name;
     String?  email =profileInfoModel.email;
     String?   phoneNumber=profileInfoModel.phone;
     String?   password=profileInfoModel.passwordConfirmation;
    String?   fatherPhone=profileInfoModel.fatherPhone;
    String?   fatherEmail=profileInfoModel.fatherEmail;
    String?   universityEmail=profileInfoModel.universityEmail;
    return Form(
      key: formKey,
      child: Column(
        children: [
          AppTextFormField(
            keyboardType: TextInputType.name,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onChanged: (value) {
              name = value;
            },
            hintText: "name",
            initialValue:profileInfoModel.name,
          ),
          const SizedBox(height: 15,),


          AppTextFormField(
            keyboardType: TextInputType.emailAddress,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onChanged: (value) {
               email = value;
            },
            hintText: "Email",
            initialValue: profileInfoModel.email,
          ),
          const SizedBox(height: 15,),


          AppTextFormField(
            keyboardType: TextInputType.number,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
             onChanged: (value) {
              phoneNumber = value;
            },
            hintText: "Phone Number",
            initialValue: profileInfoModel.phone,
          ),
          const SizedBox(height: 15,),

            AppTextFormField(
            keyboardType: TextInputType.visiblePassword,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
              onChanged: (value) {
              password = value;
            },

            hintText: "password",
            initialValue: "******",
          ),
          const SizedBox(height: 15,),

          AppTextFormField(
            keyboardType: TextInputType.visiblePassword,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onChanged: (value) {
              fatherPhone = value;
            },

            hintText: "father Phone",
            initialValue:profileInfoModel.fatherPhone,
          ),


          const SizedBox(height: 15,),

          AppTextFormField(
            keyboardType: TextInputType.emailAddress,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onChanged: (value) {
              fatherEmail = value;
            },

            hintText: "father Email",
            initialValue:profileInfoModel.fatherEmail,
          ),
          const SizedBox(height: 15,),

          AppTextFormField(
            keyboardType: TextInputType.emailAddress,

            validator: (data) {
              if (data!.isEmpty) {
                return 'Please enter some text';
              }
            },
            onChanged: (value) {
              universityEmail = value;
            },

            hintText: "university Email",
            initialValue:profileInfoModel.universityEmail,
          ),


          SizedBox(height:MediaQuery.of(context).size.height*.1),
          CustomButton(
              name:"Update",
              onTap: (){
    if (formKey.currentState?.validate() == true) {

print(name);
    BlocProvider.of<UpdateStudentProfileCubit>(context).updateStudentProfile(name!, email!,
        password!, phoneNumber!, fatherPhone!, fatherEmail!, universityEmail!);

              }})


        ],
      ),
    );
  }
}