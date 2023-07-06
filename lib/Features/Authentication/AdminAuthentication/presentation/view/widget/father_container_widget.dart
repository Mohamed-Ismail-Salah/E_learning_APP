import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../Core/Utils/app_router.dart';
import '../../../../../../Core/Utils/app_shared_preferences.dart';
import '../../../../../../Core/Utils/styles.dart';


class FatherContainerWidget extends StatelessWidget {
  const FatherContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        context.pushReplacement(AppRouter.kLoginFatherView);
        await PermissionsStorage().savePermissionsKey(AppRouter.kFatherHomeView);

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
               Expanded(child: Image.asset("assets/images/parent.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.east,
                  ),
                  Text(
                    "parent",
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
