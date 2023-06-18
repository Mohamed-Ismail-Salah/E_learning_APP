
import 'package:e_learning/Features/courses/presentation/view/widget/add_assignment_body.dart';
import 'package:flutter/material.dart';

class AddAssignmentView extends StatelessWidget{
  const AddAssignmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
body:  SafeArea(child: AddAssignmentBody()),
    );
  }

}