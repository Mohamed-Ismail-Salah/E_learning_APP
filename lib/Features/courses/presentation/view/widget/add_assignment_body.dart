import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Features/courses/presentation/view/widget/course_app_bar.dart';
import 'package:flutter/cupertino.dart';

class AddAssignmentBody extends StatelessWidget{
  const AddAssignmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          AppBarWidget(page: AppRouter.kCreateAssignment, title: "Assignments")
        ],
      ),
    );
  }

}