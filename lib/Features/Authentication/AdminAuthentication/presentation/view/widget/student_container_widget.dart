import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/Utils/styles.dart';


class StudentContainerWidget extends StatelessWidget {
  const StudentContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kLoginStudentView);

      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white),
        height: MediaQuery.of(context).size.height * .32,
        width: MediaQuery.of(context).size.width * .5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
               Expanded(child: Image.asset("assets/images/teacher.png")),
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
