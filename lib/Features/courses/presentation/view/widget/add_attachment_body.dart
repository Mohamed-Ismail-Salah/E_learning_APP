import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/courses/presentation/view_models/add_lectuures_cubit/add_lectures_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

  import '../../../../../Core/widgets/Show_Snackbar.dart';
import 'add_lectures_input.dart';

class AddAttachmentBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<AddLecturesCubit, AddLecturesState>(
        listener: (context, state) async {
      if (state is AddLecturesLoading) {
        isLoading = true;
      } else if (state is AddLecturesSuccess) {
        isLoading = false;

         showSnackBar(context, "Message sent successfully");
      } else if (state is AddLecturesFailure) {
        isLoading = false;
        showSnackBar(context, state.errMessage);
      }
    },
    builder: (context, state) => ModalProgressHUD(
    inAsyncCall: isLoading,
    child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 10,),
          Text("Add Lectures",style: Styles.textStyle25,),
SizedBox(height: MediaQuery.of(context).size.height*.1,),
          const AddLecturesInput(),
        ],
      ),
    )

    )
    );
  }

}




