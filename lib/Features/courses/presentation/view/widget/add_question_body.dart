import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_quiz_cubit/add_quiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../../../../Core/widgets/Show_Snackbar.dart';
import 'Add_Question_Widget.dart';

class AddQuestionBody extends StatelessWidget{
    AddQuestionBody({super.key,
      required this.name,
      required this.maxTime,
      required this.maxDegree,
      required this.num});
int num;
String name;
int  maxDegree;
int   maxTime;
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer< AddQuizCubit, AddQuizState>(
      listener: (context, state) async {
        if (state is AddQuizLoading) {
          isLoading = true;
        } else if (state is AddQuizSuccess) {
          isLoading = false;
context.pushReplacement(AppRouter.kAllAdminQuizView);
          showSnackBar(context, "Message sent successfully");
        } else if (state is AddQuizFailure) {
          isLoading = false;
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isLoading,
        child: SingleChildScrollView(
       child: Column(
        children: [
          const SizedBox(height: 30,),
           AddQuestionWidget(num:  num, name: name, maxTime: maxTime, maxDegree: maxTime ,)
        ],
       ),
    )
    )
    );
  }

}