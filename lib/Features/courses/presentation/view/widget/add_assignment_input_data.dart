import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';

class AddAssignmentInputData extends StatelessWidget {
  const AddAssignmentInputData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
              'Title',
              style:  Styles.textStyle16
          ),
          const SizedBox(height: 8),
          const AppTextFormField(
            hintText:'Enter title' ,
          ),

          const SizedBox(height: 16),
          Text(
              'Description',
              style: Styles.textStyle16
          ),
          const SizedBox(height: 8),
          const AppTextFormField(
            hintText:'Enter description' ,
          ),
          const SizedBox(height: 16),

          Text(
              'Submitted Date',
              style:  Styles.textStyle16
          ), const SizedBox(height: 8),

          const AppTextFormField(
            hintText:'Enter Date' ,
          ),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () {
              // Implement file upload functionality
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children:   [
                  const Icon(Icons.cloud_upload_outlined,color: Colors.black,),
                  const SizedBox(width: 8),
                  Text('Attachment file',style: Styles.textStyle16.copyWith(color: Colors.black),),
                ]),
          ),





          // Replace with dynamic data
        ],
      ),
    );
  }
}