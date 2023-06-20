
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/repos/add_lecturel_repo/add_lecturel_imp.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/add_attachment_body.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_lectuures_cubit/add_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Utils/api_service.dart';

class AddAttachmentView extends StatelessWidget{
  const AddAttachmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context) =>    AddLecturesCubit(  AddLecturesImp(ApiService(Dio()))),
    child:   Scaffold(
      body: SafeArea(child: AddAttachmentBody()),
    ));
  }

}