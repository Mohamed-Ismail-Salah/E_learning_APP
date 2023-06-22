
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';

class Option extends StatelessWidget {
    Option({super.key,
   required this.img,
      required this.page,
     required this.title,

  });
String img;
String page;
String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            context.push(page);
          },
          child: Container(
            width:  MediaQuery.of(context).size.width*.2,
            height: MediaQuery.of(context).size.height*.1,
            decoration: BoxDecoration(


              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(img),
          ),
        ),
        Text(title,style: Styles.textStyle25,)



      ],
    );
  }
}