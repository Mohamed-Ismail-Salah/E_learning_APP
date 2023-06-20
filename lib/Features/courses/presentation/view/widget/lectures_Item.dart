import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/courses/data/models/all_lecture.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LecturesItem extends StatelessWidget {
  LecturesItem({
    super.key,
    required this.lecture,
  });
  LectureModel lecture;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
context.push(AppRouter.kLectureDataView,extra: lecture);

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            gradient: LinearGradient(
              colors: [Colors.lightBlue[500]!, Colors.lightBlue[100]!],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 24.0,
                    height: 24.0,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: const Icon(
                      Icons.library_books,
                      color: Colors.white,
                      size: 18.0,
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Text(lecture.title,
                      style: Styles.textStyle25
                          .copyWith(fontWeight: FontWeight.w900)),
                ],
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  const SizedBox(width: 32.0),
                  const Icon(
                    Icons.video_library,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  const SizedBox(width: 8.0),
                  Text("Videos", style: Styles.textStyle17),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const SizedBox(width: 32.0),
                  const Icon(
                    Icons.insert_drive_file,
                    color: Colors.white,
                    size: 16.0,
                  ),
                  const SizedBox(width: 8.0),
                  Text('File', style: Styles.textStyle17),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
