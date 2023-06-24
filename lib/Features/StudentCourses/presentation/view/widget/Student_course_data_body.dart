 import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';

import 'Student_option_widget.dart';


class StudentCourseDataBody extends StatelessWidget{
  const StudentCourseDataBody({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children:   [
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      StudentOption(img: 'assets/images/verified.png',
        page: AppRouter.kAllAssignmentView,
        title: 'Assignments',
      ),
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      StudentOption(img: 'assets/images/book-stack.png',
        page:   AppRouter.kAttachmentCourseView,
        title: 'Attachment',
      ),
      SizedBox(height: MediaQuery.of(context).size.height*.1,),
      StudentOption(img: 'assets/images/quiz.png',
        page:  "AppRouter.kAllQuizView",
        title: 'Quiz',
      ),
    ],
  );
  }

}
