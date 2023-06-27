import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/Student_quiz_model.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/StudentsGradesBody.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';
import '../../data/repos/Student_grades_repo/get_Student_grades_imp.dart';
import '../view_models/get_Student_Grades_cubit/get_student_grades_cubit.dart';

class StudentsGradesView extends StatelessWidget{
    StudentsGradesView({super.key,required this.allQuizModel});
 AllQuizModel allQuizModel;
  @override
  Widget build(BuildContext context) {
     return BlocProvider(
         create: (context) => GetStudentGradesCubit(GetStudentGradesImp(ApiService(Dio())))..
         getallStudentGrades(allQuizModel.courseId, allQuizModel.id),
    child: const Scaffold(
       body: StudentsGradesBody(),
     )
     );
  }

}