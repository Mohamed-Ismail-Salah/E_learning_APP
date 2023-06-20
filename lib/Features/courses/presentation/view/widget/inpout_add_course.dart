import 'dart:io';

import 'package:e_learning/Features/courses/presentation/view_models/add_courses_cubit/add_courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';
import '../../view_models/get_courses_cubit/getcourses_cubit.dart';
import '../../view_models/image_picker_cubit/image_picker_cubit.dart';
import 'image_picker_button.dart';

class InPoutAddCourse extends StatelessWidget {
  const InPoutAddCourse({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String? subjectName;
    final subjectNameController = TextEditingController();
    String?  levelCourse;
    final levelCourseController = TextEditingController();
    String?   termCourse;
    final termCourseController = TextEditingController();
    String?   hoursCourse;
    final hoursCourseController = TextEditingController();
    String?   codeCourse;
    final codeCourseController = TextEditingController();


   //File? imageFile =  BlocProvider.of<ImagePickerCubit>(context).imageFile ;
    return Form(
        key: formKey,
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.emailAddress,
                ctrl: subjectNameController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  subjectName = value;
                },
                prefixIcon: const Icon(Icons.book),
                hintText: "Subject Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.name,
                ctrl: levelCourseController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  levelCourse = value;
                },
                prefixIcon: const Icon(Icons.apps),
                hintText: "levelCourse",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.name,
                ctrl: termCourseController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  termCourse = value;
                },
                prefixIcon: const Icon(Icons.sunny_snowing),
                hintText: "Course Term",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.name,
                ctrl: hoursCourseController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  hoursCourse = value;
                },
                prefixIcon: const Icon(Icons.schedule),
                hintText: "Course hours",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.name,
                ctrl: codeCourseController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  codeCourse = value;
                },
                prefixIcon: const Icon(Icons.schedule),
                hintText: "Course code",
              ),
            ),
     const ImagePickerButton(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: CustomButton(
                name: "Create  course",
                onTap: () {
                  if (formKey.currentState?.validate() == true) {
                    subjectName = subjectNameController.text;
                    levelCourse = levelCourseController.text;
                    termCourse = termCourseController.text;
                    hoursCourse = hoursCourseController.text;
                    codeCourse = codeCourseController.text;

                    BlocProvider.of<AddCoursesCubit>(context).addCourses(
                        subjectName!,
                        levelCourse!,
                        termCourse!,
                        hoursCourse!,
                        codeCourse!,
                        BlocProvider.of<FilePickerCubit>(context).imageFile!);
                  }
                  BlocProvider.of<GetCoursesCubit>(context).getAllCourses();
                },
              ),
            )


          ],
        ));
  }
}
