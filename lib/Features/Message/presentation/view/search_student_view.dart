
import 'package:e_learning/Features/Message/presentation/view/widget/SearchStudent_body.dart';
import 'package:flutter/material.dart';

class SearchStudentView extends StatelessWidget {
  const SearchStudentView({super.key});


  @override
  Widget build(BuildContext context) {
    return
       const Scaffold(
body: SafeArea(child: SearchStudentBody()),

    );
  }
}
