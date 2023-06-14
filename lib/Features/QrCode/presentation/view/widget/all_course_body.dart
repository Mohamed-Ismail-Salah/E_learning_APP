import 'package:flutter/material.dart';
import 'course_list_app_bar.dart';
 import 'list_view_course_widget.dart';

class AllCourseBody extends StatelessWidget {
  const AllCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              children: const [
                QrCodeListCourseAppBar(),
                SizedBox(height: 20,),
                ListViewWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}


