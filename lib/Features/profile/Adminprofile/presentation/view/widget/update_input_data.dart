import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../../Core/widgets/custom_button.dart';
import '../../../../../../Core/widgets/custom_textformfield.dart';
import '../../../data/models/profile_info_model.dart';
import '../../view_models/upate_profile_cubit/update_profile_cubit.dart';

class UpdateAdminInputData extends StatelessWidget {
  const UpdateAdminInputData({
    super.key,
    required this.profileInfoModel,
  });

  final ProfileInfoModel profileInfoModel;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String? name=profileInfoModel.name;
     String?  email =profileInfoModel.email;
     String?   phoneNumber=profileInfoModel.phone;
     String?   password=profileInfoModel.password;

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
          SizedBox(height:MediaQuery.of(context).size.height*.2),
          CustomButton(
              name:"Update",
              onTap: (){
    if (formKey.currentState?.validate() == true) {

print(name);
    BlocProvider.of<UpdateAdminProfileCubit>(context).updateProfile(name!, email!, password!, phoneNumber!);


              }})


        ],
      ),
    );
  }
}