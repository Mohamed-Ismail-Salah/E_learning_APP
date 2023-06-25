import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
 import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../data/modles/Student_quiz_model.dart';

class QuizItem extends StatelessWidget {
  QuizItem({
    super.key,
    required this.allQuizModel
  });
  AllQuizModel allQuizModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
       // context.push(AppRouter.kAssignmentDetailsView,extra:assignmentModel );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              const Icon(Icons.book, size: 32),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "assignmentModel.title",
                    style:  Styles.textStyle17.copyWith(fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children:   [
                      const Icon(Icons.description, size: 16, color: Colors.grey),
                      const SizedBox(width: 8),
                      Text(
                       "   assignmentModel.desc??""",
                          style:  Styles.textStyle16
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}