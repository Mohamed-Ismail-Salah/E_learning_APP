import 'package:e_learning/Features/Message/presentation/view_models/send_message_cubit/send_message_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../Core/widgets/custom_button.dart';
import '../../../data/models/student_inf_model.dart';
import '../../view_models/get_student_cubit/get_student_cubit.dart';

class MessageInput extends StatelessWidget {
    MessageInput({
      super.key,
    required this.sendTo

  });
  String sendTo;
  @override
  Widget build(BuildContext context) {
    String? message;
   // File? file;

    StudentInfModel? inf= BlocProvider.of<GetStudentCubit>(context).getStudentInfoModel();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: Colors.grey,
                width: 2.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Set the shadow color
                  blurRadius: 4, // Adjust the blur radius
                  offset: const Offset(10, 10), // Adjust the shadow offset
                ),
              ],
            ),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.all(16.0),
              child:   TextField(
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  hintText: 'Start writing here...',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  message=value;
                  print('New value: $value');
                },
              )
            ),
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.3),
   //  CustomButton(
   //  name: "Pick File",
   //  onTap: () async {
   //  FilePickerResult? result = await FilePicker.platform.pickFiles();
   //  if (result != null && result.files.isNotEmpty) {
   //  String filePath = result.files.single.path ?? '';
   // file = File(filePath);
   //
   //  } else {
   //
   //  }
   //  },
   //  )const SizedBox(height: 16),
        CustomButton(
          name: "Send",
          onTap: () {
            // if (file != null) {
            //   BlocProvider.of<SendMessageCubit>(context).sendMessage(
            //     message!,
            //     inf?.fatherEmail ?? "",
            //     file!,
            //   );
            // } else {
            //   // Handle the case when no file is selected
            //   // For example, show an error message or prompt the user to select a file
            // },
             if(sendTo=="toStudent"){
               BlocProvider.of<SendMessageCubit>(context).sendMessage(
                 message!,
                 inf?.email ?? "",
                 // file!,
               );
             }else {
               BlocProvider.of<SendMessageCubit>(context).sendMessage(
                 message!,
                 inf?.fatherEmail ?? "",
                 // file!,
               );
             }},

        ),


      ],
    );
  }
}