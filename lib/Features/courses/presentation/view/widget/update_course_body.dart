import 'package:e_learning/Core/Utils/styles.dart';
 import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/Utils/app_router.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import '../../view_models/update_courses_cubit/update_courses_cubit.dart';
 import 'inpout_update_course.dart';

class  UpdateCourseBody extends StatelessWidget{
  const UpdateCourseBody({super.key});

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
     return  BlocConsumer<UpdateCoursesCubit, UpdateCoursesState>(
        listener: (context, state) async{
      if (state is UpdateCoursesLoading) {
        isLoading = true;
      } else if (state is UpdateCoursesSuccess) {
        context.pushReplacement(AppRouter.kCoursesView);

        isLoading = false;
      }else if(state is UpdateCoursesFailure){
        isLoading = false;
        showSnackBar(context, state.errMessage);

      }
    },  builder:(context,state)=> ModalProgressHUD(
    inAsyncCall: isLoading,
    child: SingleChildScrollView(
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Update Course",style: Styles.textStyle25,),

          const InPoutUpdateCourse()

        ],
      ),
    )
     )
     );
  }

}