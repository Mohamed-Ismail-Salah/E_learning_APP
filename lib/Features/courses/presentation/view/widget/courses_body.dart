import 'package:flutter/material.dart';
import 'course_app_bar.dart';
import 'grid_view_courses_widget.dart';

class CoursesBody extends StatelessWidget {
  const CoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: const [
                CourseAppBar(),
                SizedBox(height: 20,),
                GridViewCourseWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}


