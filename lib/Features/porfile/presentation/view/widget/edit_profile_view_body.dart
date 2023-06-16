

import 'package:e_learning/Features/porfile/presentation/view/widget/user_Image.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';

class EditProfileBody extends StatelessWidget{
  const EditProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:   [
            UserImage(widthimg:   MediaQuery.of(context).size.width*.15, heightimg:  MediaQuery.of(context).size.height*.15,),
            const AppTextFormField(
              hintText: "name",
initialValue: "admin name",
            ),
            const SizedBox(height: 15,),


            const AppTextFormField(
              hintText: "Email",
              initialValue: "20682546255844@fci.zu.edu.eg",
            ),
            const SizedBox(height: 15,),


            const AppTextFormField(
              hintText: "Phone Number",
              initialValue: "+14987889999",
            ),
            const SizedBox(height: 15,),

            const AppTextFormField(
              hintText: "password",
              initialValue: "pass",
            ),
              SizedBox(height:MediaQuery.of(context).size.height*.2),
            CustomButton(
                name:"Update",
                onTap: (){
                 })


          ],
        ),
      ),
    );
  }

}