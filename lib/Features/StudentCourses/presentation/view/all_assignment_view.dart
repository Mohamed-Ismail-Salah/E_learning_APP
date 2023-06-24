
import 'package:dio/dio.dart';
import 'package:e_learning/Features/StudentCourses/presentation/view/widget/all_assignment_body.dart';
import 'package:e_learning/Features/courses/data/repos/get_assignments_repo/get_assignments_imp.dart';
 import 'package:e_learning/Features/courses/presentation/view_models/get_assignment_cubit/get_assignment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';
 import '../view_model/get_Student_courses_cubit/getcourses_cubit.dart';
class AllAssignmentView extends StatelessWidget {
  const AllAssignmentView({Key? key});

  @override
  Widget build(BuildContext context) {
    int? id = BlocProvider.of<GetStudentCoursesCubit>(context).getStudentCourseId();
    return BlocProvider(
      create: (context) => GetAssignmentCubit(GetAssignmentsImp(ApiService(Dio())))..getAllAssignments(id!),
      child: const Scaffold(
        body: SafeArea(child: AllAssignmentBody()),
      ),
    );
  }
}