 import 'package:e_learning/Core/Utils/colors.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? name;
  VoidCallback onTap;
  CustomButton({super.key, this.name, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              color: AppColor.secondaryColor, borderRadius: BorderRadius.circular(10)),
          height:  MediaQuery.of(context).size.height*.07,

          child: Center(
              child: Text(
            name!,
            style:  Styles.textStyle25,
          ))),
    );
  }
}
