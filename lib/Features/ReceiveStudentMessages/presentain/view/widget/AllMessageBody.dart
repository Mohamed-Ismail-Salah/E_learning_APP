import 'package:flutter/material.dart';

import 'message_item.dart';

class AllMessageBody extends StatelessWidget{
  const AllMessageBody({super.key});
  @override
  Widget build( context) {
     return Padding(
       padding: const EdgeInsets.all(10.0),
       child: ListView.builder(
         itemCount: 20,
         itemBuilder: (context, index) {
          // final assignment = assignments[index];
           return MessageItem( );
         },
       ),
     );;
  }

}