 import 'package:e_learning/Features/courses/presentation/view_models/get_lecture_cubit/get_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../courses/presentation/view/widget/lectures_Item.dart';



class  AttachmentCourseBody extends StatelessWidget {
  const AttachmentCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [

          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: BlocBuilder<GetLecturesCubit, GetLecturesState>(
              builder: (context, state) {
                if (state is GetLecturesLoading) {
                  return Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircularProgressIndicator(),
                        SizedBox(height: 16),
                        Text('Loading...'),
                      ],
                    ),
                  );
                } else if (state is GetLecturesFailure) {
                  return Text(state.errMessage);
                } else if (state is GetLecturesSuccess) {
                  final lectures = state.allLecture;
                  if (lectures.isEmpty) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/no-task.png",
                          height: 100,
                          width: 100,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "NO Lectures.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    );
                  } else {
                    return ListView.builder(
                      itemCount: lectures.length,
                      itemBuilder: (context, index) {
                        final lecture = lectures[index];
                        return LecturesItem(
                            lecture:
                                lecture); // Replace 'LecturesItem()' with your custom widget implementation
                      },
                    );
                  }
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/no-task.png",
                        height: 100,
                        width: 100,
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "NO Lectures.",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
