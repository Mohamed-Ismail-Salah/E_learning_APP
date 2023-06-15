import 'package:dio/dio.dart';
import 'package:e_learning/Features/Message/presentation/view/widget/SearchStudent_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../Core/Utils/api_service.dart';
import '../../data/get_student_inf/get_student_inf_imple.dart';
import '../view_models/get_student_cubit/get_student_cubit.dart';

class SearchStudentView extends StatelessWidget {
  const SearchStudentView({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => GetStudentCubit(GetStudentIfImpRepo(ApiService(Dio()))),
      child: const Scaffold(
body: SafeArea(child: SearchStudentBody()),
      ),
    );
  }
}
