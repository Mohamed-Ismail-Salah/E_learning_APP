import 'package:flutter/material.dart';

import 'Student_Selection.dart';
import 'grid_view_Student_courses_widget.dart';

class StudentCoursesBody extends StatelessWidget {
  const  StudentCoursesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children:     [
                StudentSelection(),
                 const SizedBox(height: 20,),
                const GridViewStudentCourseWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}


