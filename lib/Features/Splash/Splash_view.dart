import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Core/Utils/colors.dart';
import 'package:e_learning/Core/Utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Core/Utils/app_shared_preferences.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/school-management 1.png",
            height: MediaQuery.of(context).size.height * .3,
            width: MediaQuery.of(context).size.width * .6,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "FCI",
              style: Styles.textStyle40.copyWith(color: Colors.white),
            ),
            AnimatedTextKit(
              totalRepeatCount: 1,
              onFinished: () async {
                final tokenStorage = TokenStorage();
                String? token = await tokenStorage.getToken();
                if(token==null){
                  context.pushReplacement(AppRouter.kAccessPremissionsView);

                }else{
                  print(token);
                  context.pushReplacement(AppRouter.kStudentHomeView);
                }

              },
              animatedTexts: [
                WavyAnimatedText(
                  "GUIDER",
                  textStyle: Styles.textStyle40
                      .copyWith(fontSize: 27, color: Colors.yellow),
                ),
              ],
            ),
          ])
        ],
      ),
    );
  }
}
