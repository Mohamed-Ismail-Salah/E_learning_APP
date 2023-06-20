import 'package:e_learning/Features/courses/presentation/view_models/get_courses_cubit/getcourses_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'course_item.dart';

class GridViewCourseWidget extends StatelessWidget {
  const GridViewCourseWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<GetCoursesCubit,GetCoursesState>(
       builder:(context,state) {
          if(state is GetCoursesSuccess){
          return  Flexible(
              child: GridView.builder(
                  itemCount: state.allCourse.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return   CourseItem(
                      code:state.allCourse[index].code,
                      id: state.allCourse[index].id ,
                      image:state.allCourse[index].img,
                      courseName: state.allCourse[index].name,);

                  }
              ),
            );
          }else if(state is GetCoursesFailure){
return   Image.asset("assets/images/no-task.png");
          }else{
         return   const CircularProgressIndicator();
          }
       }
    );

  }


}