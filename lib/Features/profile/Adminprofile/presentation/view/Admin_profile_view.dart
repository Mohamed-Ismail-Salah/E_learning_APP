
 import 'package:e_learning/Features/profile/Adminprofile/presentation/view/widget/Admin_Profile_view_body.dart';
import 'package:flutter/material.dart';

class AdminProfileView extends StatelessWidget{
  const AdminProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  SafeArea(child: AdminProfileViewBody()),
    );
  }

}