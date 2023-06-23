
 import 'package:dio/dio.dart';
import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/edit_Admin_profile_view_body.dart';
import 'package:e_learning/Features/profile/StudentProfile/presentation/view/widget/edit_Admin_profile_view_body.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/Utils/api_service.dart';
import '../../data/models/profile_Student_info_model.dart';
import '../../data/update_profile/update_Student_profile_imp.dart';
import '../view_models/upate_profile_cubit/update_Student_profile_cubit.dart';

class StudentEditProfileView extends StatelessWidget {
  StudentEditProfileView({
      super.key,
      required this.profileStudentInfoModel,
    });

   ProfileStudentInfoModel profileStudentInfoModel;
  @override
  Widget build(BuildContext context) {
     return    BlocProvider(
         create:(context) =>  UpdateStudentProfileCubit(UpdateStudentProfileImp(ApiService(Dio()))),
         child: Scaffold(
       body:  SafeArea(child: EditStudentProfileBody(  profileStudentInfoModel: profileStudentInfoModel,)),
     ));
  }
}
