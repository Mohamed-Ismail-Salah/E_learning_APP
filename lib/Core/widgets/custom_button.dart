 import 'package:e_learning/Core/Utils/colors.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String? name;
  TextStyle ? textStyle  ;
  VoidCallback onTap;
  CustomButton({super.key, this.name, required this.onTap,this.textStyle});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: AppColor.secondaryColor, borderRadius: BorderRadius.circular(10)),
        height:  MediaQuery.of(context).size.height*.07,
width:MediaQuery.of(context).size.width*.9 ,
        child: TextButton(

            onPressed:onTap,
            child: Text(
          name!,
          style:textStyle??Styles.textStyle25.copyWith(color: Colors.black)
        )
    ));
  }
}
