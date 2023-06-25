import 'package:flutter/material.dart';

import '../../../../courses/data/models/Assignment_modle.dart';
import 'assignment_DataWidget.dart';

class AssignmentDetailsBody extends StatelessWidget{
    AssignmentDetailsBody({super.key,required this.assignmentModel});
  AssignmentModel assignmentModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

children: [
  SizedBox(height: MediaQuery.of(context).size.height*.05,),
  AssignmentDataWidget(
    title:assignmentModel.title
    ,desc: assignmentModel.desc,
    file: assignmentModel.file,
    )
],
    );
  }

}