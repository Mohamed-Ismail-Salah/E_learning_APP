
import 'package:e_learning/Features/courses/presentation/view/widget/all_Attachment_body.dart';
import 'package:flutter/material.dart';

class AllAttachmentView extends StatelessWidget{
  const AllAttachmentView({super.key});

  @override
  Widget build(BuildContext context) {
  return const Scaffold(
    body: SafeArea(child: AllAttachmentBody()),
  );
  }

}