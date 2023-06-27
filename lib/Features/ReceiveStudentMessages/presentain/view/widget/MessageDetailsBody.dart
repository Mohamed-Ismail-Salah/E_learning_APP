import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/ReceiveStudentMessages/data/model/Messages_Data_modle.dart';
import 'package:flutter/material.dart';
class MessageDetailsBody extends StatelessWidget{
    MessageDetailsBody({super.key,required this.messageDataModel});
MessageDataModel messageDataModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: const Icon(Icons.person),
                title: Text(
                  'From:',
                  style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  messageDataModel.fatherEmail,
                  style: Styles.textStyle16,
                ),
              ),
              const Divider(
                thickness: 2.0,
              ),
              ListTile(
                leading: const Icon(Icons.subject),
                title: Text(
                  'message:',
                  style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  messageDataModel.message,
                  style: Styles.textStyle16,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}