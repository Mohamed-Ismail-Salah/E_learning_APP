
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';

import 'course_app_bar.dart';
import 'lectures_Item.dart';

class AllAttachmentBody extends StatelessWidget{
  const AllAttachmentBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          AppBarWidget(
            page: AppRouter.kAddAttachmentView, title: 'Lectures',),
const SizedBox(height: 20,),
          Expanded(
            child: ListView.builder(
              itemCount:20,
              itemBuilder: (context, index) {
                return const LecturesItem(); // Replace 'LecturesItem()' with your custom widget implementation
              },
            ),
          )







        ],
      ),
    );
  }


}

