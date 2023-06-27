import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/Student_quiz_model.dart';
import 'package:e_learning/Features/StudentCourses/presentation/view/widget/StudentQuizDetailsViewBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';
import '../../data/repos/Answer_Question_repos/Answer_Question_imp.dart';
import '../view_model/answer_cubit/answer_cubit.dart';

class StudentQuizDetailsView extends StatelessWidget{
    StudentQuizDetailsView({super.key,required this.allQuizModel});
  AllQuizModel allQuizModel;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context) =>  AnswerCubit( AnswerQuistionsImp(ApiService(Dio()))) ,
    child:    Scaffold(
      body: SafeArea(child: StudentQuizDetailsBody(allQuizModel: allQuizModel,)) ,
    ));
  }
  
}