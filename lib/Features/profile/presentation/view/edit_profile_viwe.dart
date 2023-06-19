
 import 'package:dio/dio.dart';
import 'package:e_learning/Features/profile/presentation/view/widget/edit_profile_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Core/Utils/api_service.dart';

import '../../data/models/profile_info_model.dart';
import '../../data/update_profile/update_profile_imp.dart';
import '../view_models/upate_profile_cubit/update_profile_cubit.dart';

class EditProfileView extends StatelessWidget {
    EditProfileView({
      super.key,
      required this.profileInfoModel,
    });

   ProfileInfoModel profileInfoModel;
  @override
  Widget build(BuildContext context) {
     return    BlocProvider(
         create:(context) =>  UpdateProfileCubit(UpdateProfileImp(ApiService(Dio()))),
         child: Scaffold(
       body:  SafeArea(child: EditProfileBody(profileInfoModel:  profileInfoModel,)),
     ));
  }
}
