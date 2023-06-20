import 'dart:io';

import 'package:e_learning/Features/courses/presentation/view_models/add_lectuures_cubit/add_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import '../../view_models/get_courses_cubit/getcourses_cubit.dart';
import '../../view_models/image_picker_cubit/image_picker_cubit.dart';
import 'file_picker_button.dart';

class AddLecturesInput extends StatelessWidget {
  const AddLecturesInput({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String?  title;
    final titleController = TextEditingController();
    String?   link;
    final linkController = TextEditingController();
    return Form(
        key: formKey,
        child: Column(
          children: [

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

            const FilePickerButton(),
            SizedBox(height: MediaQuery.of(context).size.height*.2,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: CustomButton(
                name: "Create  course",
                onTap: () {
                  if (formKey.currentState?.validate() == true) {
                    title = titleController.text;
                    link = linkController.text;
                     String? code =BlocProvider.of<GetCoursesCubit>(context).getCode();
                 File? file= BlocProvider.of<FilePickerCubit>(context).selectedFile;
                    BlocProvider.of<AddLecturesCubit>(context).addLectures(title!, file, link!, code!);

                  }
                },
              ),
            )


          ],
        ));
  }
}