import 'package:flutter/material.dart';
 import '../../../../../../Core/Utils/styles.dart';
import 'student_grid_view_widget.dart';

class StudentHomeBody extends StatelessWidget{
  const StudentHomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return    CustomScrollView(
      slivers: [
        SliverFillRemaining(
      child:   Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Image.asset("assets/images/Student Council (111).png"),
SizedBox(width: MediaQuery.of(context).size.width*.3,),
                 Text( "Student Home",style:Styles.textStyle25,),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          const StudentGridViewWidget(),
        ],
      )),
  ] );
  }
}



