import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/Message/presentation/view_models/send_message_cubit/send_message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import 'message_input.dart';

class SendMessageBody extends StatelessWidget{
    SendMessageBody({super.key,
    required this.sendTo
    });
String sendTo;
  @override
  Widget build(BuildContext context) {
    bool isLoading = false;
    return BlocConsumer<SendMessageCubit, SendMessageState>(
      listener: (context, state) async {
        if (state is SendMessageLoading) {
          isLoading = true;
        } else if (state is SendMessageSuccess) {
          isLoading = false;

          showSnackBar(context, "Message sent successfully");
        } else if (state is SendMessageFailure) {
          isLoading = false;
          showSnackBar(context, state.errMessage);
        }
      },
      builder: (context, state) => ModalProgressHUD(
        inAsyncCall: isLoading,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Create Message", style: Styles.textStyle25),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
                MessageInput(sendTo:sendTo),
            ],
          ),
        ),
      ),
    );
  }
}