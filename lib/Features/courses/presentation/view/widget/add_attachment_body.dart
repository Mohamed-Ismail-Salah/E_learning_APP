import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import 'image_picker_button.dart';

class AddAttachmentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String?  title;
    final titleController = TextEditingController();
    String?  code;
    final codeController = TextEditingController();
    String?   link;
    final linkController = TextEditingController();

    return Form(
         key: formKey,
         child: Column(
           children: [
Text("Add Attachment",style: Styles.textStyle25,),

             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
               child: AppTextFormField(
                 keyboardType: TextInputType.emailAddress,
                 ctrl:  titleController,
                 validator: (data) {
                   if (data!.isEmpty) {
                     return 'Please enter some text';
                   }
                 },
                 onFieldSubmitted: (value) {
                    title = value;
                 },
                 prefixIcon: const Icon(Icons.book),
                 hintText: "title",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
               child: AppTextFormField(
                 keyboardType: TextInputType.name,
                 ctrl:  codeController,
                 validator: (data) {
                   if (data!.isEmpty) {
                     return 'Please enter some text';
                   }
                 },
                 onFieldSubmitted: (value) {
                    code = value;
                 },
                 prefixIcon: const Icon(Icons.apps),
                 hintText: "code",
               ),
             ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
               child: AppTextFormField(
                 keyboardType: TextInputType.name,
                 ctrl:  linkController,
                 validator: (data) {
                   if (data!.isEmpty) {
                     return 'Please enter some text';
                   }
                 },
                 onFieldSubmitted: (value) {
                   link = value;
                 },
                 prefixIcon: const Icon(Icons.insert_link_outlined),
                 hintText: "link",
               ),
             ),


             const ImagePickerButton(),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
               child: CustomButton(
                 name: "Create  course",
                 onTap: () {
                   if (formKey.currentState?.validate() == true) {
                     title = titleController.text;
                     link = linkController.text;
                     code = codeController.text;



                   }
                 },
               ),
             )


           ],
         ));
  }

}