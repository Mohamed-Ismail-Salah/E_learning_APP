import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
class MessageDetailsBody extends StatelessWidget{
  const MessageDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(
                'From:',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "sender",
                style: Styles.textStyle16,
              ),
            ),
            const Divider(
              thickness: 2.0,
            ),
            ListTile(
              leading: const Icon(Icons.subject),
              title: Text(
                'Subject:',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
               " subject",
                style: Styles.textStyle16,
              ),
            ),
              const Divider(
                thickness: 2.0,
              ),
            Text(
              "body",
              style: Styles.textStyle16,
            ),
          ],
        ),
      ),
    );
  }
}