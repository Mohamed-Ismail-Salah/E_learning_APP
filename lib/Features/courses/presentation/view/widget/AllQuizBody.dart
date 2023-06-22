import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';

import 'course_app_bar.dart';

class AllQuizBody extends StatelessWidget{
  const AllQuizBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          children: [
            AppBarWidget(page: AppRouter.kCreateQuiz, title: 'All Quiz',)
          ],
      ),
    );
  }

}