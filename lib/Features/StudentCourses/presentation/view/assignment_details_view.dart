import 'package:e_learning/Features/StudentCourses/presentation/view/widget/assignment_details_body.dart';
import 'package:flutter/material.dart';

import '../../../courses/data/models/Assignment_modle.dart';

class AssignmentDetailsView extends StatelessWidget{
   AssignmentDetailsView({super.key,required this.assignmentModel});
  AssignmentModel assignmentModel;
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(child: AssignmentDetailsBody(assignmentModel: assignmentModel,)),
    );
  }

}