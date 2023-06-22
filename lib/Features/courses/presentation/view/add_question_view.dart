import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/repos/add_quiz_repo/add_quiz_imp.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/add_question_body.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_quiz_cubit/add_quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';


class AddQuestionView extends StatelessWidget {
  AddQuestionView({
    required this.name,
    required this.maxTime,
    required this.maxDegree,
    required this.num,
  });

  final String name;
  final int maxTime;
  final int maxDegree;
  final int num;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddQuizCubit(AddQuizImp(ApiService(Dio()))),
      child: SafeArea(
        child: Scaffold(
          body: AddQuestionBody(
            num: num,
            name: name,
            maxTime: maxTime,
            maxDegree: maxDegree,
          ),
        ),
      ),
    );
  }
}
