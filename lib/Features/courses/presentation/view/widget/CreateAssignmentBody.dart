import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_assignment_cubit/add_assignment_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import 'add_assignment_input_data.dart';
class CreateAssignmentBody extends StatelessWidget{
  const CreateAssignmentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer< AddAssignmentCubit, AddAssignmentState>(
        listener: (context, state) async {
      if (state is AddAssignmentLoading) {
        isLoading = true;
      } else if (state is AddAssignmentSuccess) {
        isLoading = false;

         context.pop(AppRouter.kCreateAssignment);
        showSnackBar(context, "Message sent successfully");
      } else if (state is AddAssignmentFailure) {
        isLoading = false;
        showSnackBar(context, state.errMessage);
      }
    },
    builder: (context, state) => ModalProgressHUD(
    inAsyncCall: isLoading,
    child: Padding(
       padding: const EdgeInsets.all(10),
       child: SingleChildScrollView(
         child: Column(

children: [
  Text("Add Assignment ",style: Styles.textStyle25,),
  SizedBox(height: MediaQuery.of(context).size.height*.1,),
    AddAssignmentInputData(),


],
         ),
       ),
    )
    )
    );
  }

}

