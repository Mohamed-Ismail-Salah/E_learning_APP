 import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';

import 'option_widget.dart';

class CourseDataBody extends StatelessWidget{
  const CourseDataBody({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children:   [
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      Option(img: 'assets/images/verified.png',
        page: AppRouter.kAddAssignmentView,
        title: 'Add Assignments',
      ),
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      Option(img: 'assets/images/book-stack.png',
        page:  AppRouter.kAllAttachmentView,
        title: 'Add Attachment',
      ),
    ],
  );
  }

}
