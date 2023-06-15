import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class StudentItem extends StatelessWidget {
   StudentItem({super.key,
    required this.name,
    required this.email

  });
  String name;
  String email;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

                Text(
                  name ,
                  style: Styles.textStyle17,
                ),
                const Spacer(),
                Flexible(
                  child: Text(
                     email,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle17,
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 0.7,
          ),
        ],
      ),
    );
  }
}