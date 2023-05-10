import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/Authentication/presentation/view/widget/student_container_widget.dart';
import 'package:flutter/material.dart';

import 'admin_container_widget.dart';

class AccessPremissionsBody extends StatelessWidget {
  const AccessPremissionsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:   [
        Text("Please choose your account type!",style: Styles.textStyle25,),
        const SizedBox(height: 40,),
        const StudentContainerWidget(),
         const SizedBox(height: 40,),
         const AdminContainerWidget()

      ],
    );
  }
}
