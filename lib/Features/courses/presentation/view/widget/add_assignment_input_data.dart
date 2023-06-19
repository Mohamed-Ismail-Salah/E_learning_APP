import 'dart:io';
import 'package:e_learning/Features/courses/presentation/view_models/add_assignment_cubit/add_assignment_cubit.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';

class AddAssignmentInputData extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();

    String? title;
    final titleController = TextEditingController();
    File?  file;
    String?   desc;
    final descController = TextEditingController();

    return Form(
      key: formKey,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                    'Title',
                    style:  Styles.textStyle16
                ),
                const SizedBox(height: 8),
                  AppTextFormField(
                  keyboardType: TextInputType.name,
                  ctrl:  titleController,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                   onChanged: (value) {
                    title = value;
                  },
                  hintText:'Enter title' ,
                ),

                const SizedBox(height: 16),
                Text(
                    'Description',
                    style: Styles.textStyle16
                ),
                const SizedBox(height: 8),
                  AppTextFormField(
                  keyboardType: TextInputType.name,
                  ctrl: descController,
                  validator: (data) {
                    if (data!.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                  onChanged: (value) {
                    desc = value;
                  },
                  hintText:'Enter description' ,
                ),
                const SizedBox(height: 16),

                Text(
                    'Submitted Date',
                    style:  Styles.textStyle16
                ), const SizedBox(height: 8),


                ElevatedButton(
                  onPressed:
                    () async {
                      FilePickerResult? result = await FilePicker.platform.pickFiles();
                      if (result != null) {
                        File pickedFile = File(result.files.single.path!);
                          file = pickedFile;
                      } else {
                        file = null;
                      }

                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children:   [
                        const Icon(Icons.cloud_upload_outlined,color: Colors.black,),
                        const SizedBox(width: 8),
                        Text('Attachment file',style: Styles.textStyle16.copyWith(color: Colors.black),),


                      ]),
                ),

              ],
            ),
          ),

          SizedBox(height: MediaQuery.of(context).size.height*.15,),
          CustomButton(
              name: "Upload Assignment",
              onTap: (){
                if (formKey.currentState?.validate() == true) {
                  title = titleController.text;
                  desc = descController.text;


                    BlocProvider.of<AddAssignmentCubit>(context)
                        .addAssignment(title!, file, "2", desc!);
                  }
                }
              )
        ],
      ),
    );
  }
}