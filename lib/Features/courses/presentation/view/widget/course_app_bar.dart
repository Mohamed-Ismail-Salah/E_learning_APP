import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';

class CourseAppBar extends StatelessWidget {
  const CourseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Courses",
          style: Styles.textStyle25,
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(Icons.add_circle,
              color: Colors.black, size: 50),
          onPressed: () {
            context.pushReplacement(AppRouter.kAddCourseView);
          },
        ),
      ],
    );
  }
}