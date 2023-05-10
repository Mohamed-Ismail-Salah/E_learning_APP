import 'package:flutter/material.dart';
import '../../../../../Core/widgets/custom_button.dart';
import 'authentication_image.dart';
import 'body_Input_login_widget.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:  [
          const AuthenticationImage(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: const BodyInputLoginWidget(),


            ),
          ),
      Padding(
      padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 10),
      child: CustomButton(
      name: "Login",
      onTap: () {  },),
      ) ],
      ),
    );
  }
}


