import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/courses/data/models/Assignment_modle.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MessageItem extends StatelessWidget {
  MessageItem({
    super.key,
   //   required this.assignmentModel
  });
   //AssignmentModel assignmentModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.push(AppRouter.kMessageDetailsView );
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
              const Icon(Icons.message,color: Colors.blueAccent, size: 32),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person, size: 16, color: Colors.green),
                      const SizedBox(width: 8),
                      Text(
                       " assignmentModel.title",
                        style:  Styles.textStyle17.copyWith(fontWeight: FontWeight.w900),
                      ),


                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "assignmentModel.desc??""",
                    style:  Styles.textStyle16
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