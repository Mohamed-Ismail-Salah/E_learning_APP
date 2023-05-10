import 'package:flutter/material.dart';

import '../../../../../Core/Utils/styles.dart';

class StudentContainerWidget extends StatelessWidget {
  const StudentContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width * .5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              Image.asset("assets/images/teacher.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.east,
                  ),
                  Text(
                    "student",
                    style: Styles.textStyle15,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
