
import 'package:e_learning/Features/courses/data/models/all_lecture.dart';
import 'package:flutter/material.dart';

import 'build_resource_card.dart';

class LectureDataBody extends StatelessWidget{
  LectureModel lectureModel;

  LectureDataBody({super.key,required this.lectureModel});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Explore Educational Materials',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView(
              children:   [
                 BuildResourceCard(icon: Icons.play_circle_fill,
                     color: Colors.blue,
                     title: 'Video Tutorial',
                     subtitle: lectureModel.title,
                     url:lectureModel.link??""  ),
                const SizedBox(height: 16),
                BuildResourceCard(
                    icon: Icons.picture_as_pdf, color: Colors.red,
                    title: 'PDF Materials',
                    subtitle: lectureModel.title, url: lectureModel.file??"" ),
              ],
            ),
          ),
        ],
      ),

    );
  }
}

