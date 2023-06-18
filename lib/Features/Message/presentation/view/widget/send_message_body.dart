import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'message_input.dart';

class SendMessageBody extends StatelessWidget{
  const SendMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   SingleChildScrollView(
      child: Column(
        children:   [
          Text("Create Message",style: Styles.textStyle25,),
          SizedBox(height: MediaQuery.of(context).size.height*.1,),
          const MessageInput(),
          SizedBox(height: MediaQuery.of(context).size.height*.3,),
          CustomButton(
name: "Send",
              onTap: (){})
        ],
      ),
    );
  }

}
