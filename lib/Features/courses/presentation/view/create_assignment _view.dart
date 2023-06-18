
import 'package:e_learning/Features/courses/presentation/view/widget/CreateAssignmentBody.dart';
import 'package:flutter/material.dart';

class CreateAssignmentView extends StatelessWidget{
  const CreateAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body:SafeArea(child: CreateAssignmentBody()) ,
    );
  }

}