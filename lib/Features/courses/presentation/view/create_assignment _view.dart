
import 'package:dio/dio.dart';
import 'package:e_learning/Features/courses/data/repos/add_assignment_repo/add_assignment_imp.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/CreateAssignmentBody.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_assignment_cubit/add_assignment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';

class CreateAssignmentView extends StatelessWidget{
  const CreateAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create:(context) =>   AddAssignmentCubit( AddAssignmentImp(ApiService(Dio()))),
    child: const Scaffold(
body:SafeArea(child: CreateAssignmentBody()) ,
    )
    );
  }

}