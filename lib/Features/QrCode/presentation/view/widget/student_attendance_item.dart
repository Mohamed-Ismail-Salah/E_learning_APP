import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class StudentAttendanceItem extends StatelessWidget {
     StudentAttendanceItem({super.key,
    required this.name

  });
String name;
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white,


      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric( horizontal: 20),
            child: Row(children: [
              const Icon(Icons.check),
              const SizedBox(width: 30,),
              Text(name,style: Styles.textStyle16,),
              const SizedBox(width: 30,),
             // Text("08:53 Am",style: Styles.textStyle16,),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.delete_outline,size: 30,))
            ],),
          ),
          const Divider(
            color: Colors.black,  // Customize the color of the line
            thickness: 1.0,       // Customize the thickness of the line
          )
        ],
      ),
    );
  }
}