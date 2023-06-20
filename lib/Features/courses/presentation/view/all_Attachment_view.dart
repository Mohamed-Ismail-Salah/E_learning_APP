
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/repos/get_Lecture_repo/get_Lecture_imp.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/all_Attachment_body.dart';
import 'package:e_learning/Features/courses/presentation/view_models/get_lecture_cubit/get_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';
import '../view_models/get_courses_cubit/getcourses_cubit.dart';

class AllAttachmentView extends StatelessWidget{
  const AllAttachmentView({super.key});

  @override
  Widget build(BuildContext context) {
    String? code = BlocProvider.of<GetCoursesCubit>(context).getCode();
    return BlocProvider(
        create:(context) =>   GetLecturesCubit( GetLectureRepoImp(ApiService(Dio())))..getAllLectures(code!),
    child: const  Scaffold(
    body: SafeArea(child: AllAttachmentBody()),
    ));
  }

}