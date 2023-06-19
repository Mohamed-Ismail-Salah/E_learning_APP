
import 'package:e_learning/Features/courses/presentation/view/widget/add_attachment_body.dart';
import 'package:flutter/material.dart';

class AddAttachmentView extends StatelessWidget{
  const AddAttachmentView({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: SafeArea(child: AddAttachmentBody()),
    );
  }

}