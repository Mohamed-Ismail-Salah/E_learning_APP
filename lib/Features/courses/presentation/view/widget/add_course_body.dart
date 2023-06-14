import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_courses_cubit/add_courses_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import 'inpout_add_course.dart';

class  AddCourseBody extends StatelessWidget{
  const AddCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
     return  BlocConsumer<AddCoursesCubit, AddCoursesState>(
        listener: (context, state) async{
      if (state is AddCoursesLoading) {
        isLoading = true;
      } else if (state is AddCoursesSuccess) {
        context.pushReplacement(AppRouter.kCoursesView);

        isLoading = false;
      }else if(state is AddCoursesFailure){
        isLoading = false;
        showSnackBar(context, state.errMessage);

      }
    },  builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child: SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Add Course",style: Styles.textStyle25,),

          const InPoutAddCourse()

        ],
      ),
    )
     )
     );
  }

}