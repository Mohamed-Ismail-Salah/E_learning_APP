import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/styles.dart';


class AdminContainerWidget extends StatelessWidget {
  const AdminContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(AppRouter.kLoginView);
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
               Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Image.asset("assets/images/teachings.png"),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.east,
                  ),
                  Text(
                    "Admin",
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
