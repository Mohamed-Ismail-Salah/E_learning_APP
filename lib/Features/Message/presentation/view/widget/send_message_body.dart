
import 'package:flutter/material.dart';

class SendMessageBody extends StatelessWidget{
  const SendMessageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5), // Set the shadow color
              blurRadius: 4, // Adjust the blur radius
              offset: Offset(10, 10), // Adjust the shadow offset
            ),
          ],
        ),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          padding: EdgeInsets.all(16.0),
          child: TextField(
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Start writing here...',
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

}