
import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/data/repos/get_Student_quiz_repos/get_Student_quiz_imp.dart';
import 'package:e_learning/Features/StudentCourses/presentation/view/widget/all_quiz_body.dart';
 import 'package:e_learning/Features/StudentCourses/presentation/view_model/get_Student_Quiz_cubit/getQuiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Utils/api_service.dart';
 import '../view_model/get_Student_courses_cubit/getcourses_cubit.dart';
class AllStudentQuizView extends StatelessWidget {
  const AllStudentQuizView({Key? key});

  @override
  Widget build(BuildContext context) {
    int? id = BlocProvider.of<GetStudentCoursesCubit>(context).getStudentCourseId();
    return BlocProvider(
      create: (context) => GetStudentQuizCubit(GetStudentQuizImp(ApiService(Dio())))..getAllQuiz(id.toString()),
      child: const Scaffold(
        body: SafeArea(child: AllStudentQuizBody()),
      ),
    );
  }
}