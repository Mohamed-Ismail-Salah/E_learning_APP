
import 'package:cached_network_image/cached_network_image.dart';
 import 'package:e_learning/Features/StudentCourses/presentation/view_model/get_Student_courses_cubit/getcourses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
  import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/Utils/styles.dart';

class StudentCourseItem extends StatelessWidget {
  StudentCourseItem({super.key,required this.image,required this.courseName,required this.id,required this.code});

String image;
String courseName;
 int id;
 String code;
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: (){
        BlocProvider.of<GetStudentCoursesCubit>(context).setStudentCourseId(id);
        BlocProvider.of<GetStudentCoursesCubit>(context).setStudentCode(code);
context.push(AppRouter.kStudentCourseDataView);
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
          height: MediaQuery.of(context).size.height * .37,
          width: MediaQuery.of(context).size.width * .5,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                   child:CachedNetworkImage(
                     imageUrl:"https://what-a-sito.000webhostapp.com/course_imgs/$image",
                     placeholder: (context, image) => const CircularProgressIndicator(),
                     errorWidget: (context, image, error) => const Icon(Icons.error),
                     fit: BoxFit.fill,
                   ),

                ),
              ),
              Text(
                courseName,
                style: Styles.textStyle16,
              ),


            ],
          ),
        ),
      ),
    );
  }
}
