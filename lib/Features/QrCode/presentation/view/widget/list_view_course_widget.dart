  import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../courses/presentation/view_models/get_courses_cubit/getcourses_cubit.dart';
import 'course_item.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});


  @override
  Widget build(BuildContext context) {
    return   BlocBuilder<GetCoursesCubit,GetCoursesState>(
       builder:(context,state) {
          if(state is GetCoursesSuccess){
          return  Flexible(
              child: ListView.builder(
                  itemCount: state.allCourse.length,

                  itemBuilder: (BuildContext context, int index) {
                    return   QrCodeCourseItem(
                      image:state.allCourse[index].img,
                      courseName: state.allCourse[index].name,
                    id:state.allCourse[index].id ,
                    );

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