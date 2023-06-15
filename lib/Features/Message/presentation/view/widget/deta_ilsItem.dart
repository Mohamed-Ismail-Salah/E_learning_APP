import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class DetailsItem extends StatelessWidget {
  DetailsItem({super.key,
    required this.disc,
    required this.info

  });
  String disc;
  String info;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white60,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text( disc,style: Styles.textStyle17,),
            const Spacer(),
            Text(info,style: Styles.textStyle17,),
          ],
        ),
      ),
    );
  }
}
