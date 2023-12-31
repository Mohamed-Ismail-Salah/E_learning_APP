
import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
 import '../../../../../Core/Utils/styles.dart';
import '../../view_models/get_courses_cubit/getcourses_cubit.dart';

class CourseItem extends StatelessWidget {
    CourseItem({super.key,required this.image,required this.courseName,required this.id,required this.code});

String image;
String courseName;
 int id;
 String code;
  @override
  Widget build(BuildContext context) {

    return  GestureDetector(
      onTap: (){
        BlocProvider.of<GetCoursesCubit>(context).setCourseId(id);
        BlocProvider.of<GetCoursesCubit>(context).setCode(code);
context.push(AppRouter.kCourseDataView);
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
             context.push(AppRouter.kUpdateCourseView);
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.green,
                      size: 30,
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
