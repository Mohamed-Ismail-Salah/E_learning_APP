import 'package:e_learning/Features/courses/presentation/view_models/get_courses_cubit/getcourses_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/get_Student_courses_cubit/getcourses_cubit.dart';
import 'Student_course_item.dart';

class GridViewStudentCourseWidget extends StatelessWidget {
  const GridViewStudentCourseWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<GetStudentCoursesCubit,GetStudentCoursesState>(
       builder:(context,state) {
          if(state is GetStudentCoursesSuccess){
          return  Flexible(
              child: GridView.builder(
                  itemCount: state.allCourse.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return   StudentCourseItem(
                      code:state.allCourse[index].code,
                      id: state.allCourse[index].id ,
                      image:state.allCourse[index].img,
                      courseName: state.allCourse[index].name,);

                  }
              ),
            );
          } else if(state is GetStudentCoursesLoading ){
            return const CircularProgressIndicator();
          }
          else{
         return   Column(
             crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           SizedBox(height: MediaQuery.of(context).size.height*.2,),
           Image.asset(
             "assets/images/no-task.png",
             height: 100,
             width: 100,
           )
         ],);
           }
       }
    );

  }


}