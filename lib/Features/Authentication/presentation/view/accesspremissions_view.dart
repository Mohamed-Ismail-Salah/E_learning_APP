import 'package:e_learning/Features/Authentication/presentation/view/widget/accessPremissions_Body.dart';
import 'package:flutter/material.dart';

class AccessPremissionsView extends StatelessWidget {
  const AccessPremissionsView({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10),
        child: AccessPremissionsBody(),
      )),
    );
  }
}
