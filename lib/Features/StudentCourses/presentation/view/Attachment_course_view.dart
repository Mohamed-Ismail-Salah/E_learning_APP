
import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/presentation/view/widget/Attachment_Course_body.dart';
import 'package:e_learning/Features/courses/data/repos/get_Lecture_repo/get_Lecture_imp.dart';
import 'package:e_learning/Features/courses/presentation/view_models/get_lecture_cubit/get_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';
import '../view_model/get_Student_courses_cubit/getcourses_cubit.dart';

class  AttachmentCourseView extends StatelessWidget{
  const AttachmentCourseView({super.key});

  @override
  Widget build(BuildContext context) {
    String? code = BlocProvider.of<GetStudentCoursesCubit>(context).getStudentCode();
    return BlocProvider(
        create:(context) =>   GetLecturesCubit( GetLectureRepoImp(ApiService(Dio())))..getAllLectures(code!),
    child: const  Scaffold(
    body: SafeArea(child: AttachmentCourseBody()),
    ));
  }

}