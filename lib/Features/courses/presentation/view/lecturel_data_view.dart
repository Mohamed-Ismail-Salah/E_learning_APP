
import 'package:e_learning/Features/courses/presentation/view/widget/lecture_data_body.dart';
import 'package:flutter/material.dart';

import '../../data/models/all_lecture.dart';

class LectureDataView extends StatelessWidget{
    LectureDataView({super.key
    ,required this.lecture
    });
  LectureModel lecture;

  @override
  Widget build(BuildContext context) {
     return   Scaffold(
       body:  SafeArea(child: LectureDataBody(lectureModel: lecture,)),
     );
  }

}