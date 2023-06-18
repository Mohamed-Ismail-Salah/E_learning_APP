import 'package:flutter/material.dart';
import '../../../../../Core/Utils/app_router.dart';
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
              children:   [
                AppBarWidget(page: AppRouter.kAddCourseView, title: 'Courses',),
                const SizedBox(height: 20,),
                const GridViewCourseWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}


