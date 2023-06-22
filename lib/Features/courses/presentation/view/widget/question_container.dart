
import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/widgets/custom_button.dart';
import '../../../../../Core/widgets/custom_textformfield.dart';

class QuestionContainer extends StatelessWidget {
  const QuestionContainer({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey();
    String?  name;
    final nameController = TextEditingController();
    String?  maxDegree;
    final maxDegreeController = TextEditingController();
    String?   maxTime;
    final maxTimeController = TextEditingController();
    String?   numberOfQuestions;
    final numberOfQuestionsController = TextEditingController();

    return Form(
        key: formKey,
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.name,
                ctrl: nameController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  name = value;
                },
                prefixIcon: const Icon(Icons.book),
                hintText: "Quiz Name",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.number,
                ctrl:maxDegreeController  ,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  maxDegree = value;
                },
                prefixIcon: const Icon(Icons.leaderboard),
                hintText: "Max Degree",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.datetime,
                ctrl: maxTimeController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                  maxTime = value;
                },
                prefixIcon: const Icon(Icons.timer_sharp),
                hintText: "Max Time",
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              child: AppTextFormField(
                keyboardType: TextInputType.number,
                ctrl:  numberOfQuestionsController,
                validator: (data) {
                  if (data!.isEmpty) {
                    return 'Please enter some text';
                  }
                },
                onFieldSubmitted: (value) {
                   numberOfQuestions = value;
                },
                prefixIcon: const Icon(Icons.format_list_numbered_sharp),
                hintText: "Number Of Questions",
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.15,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
              child: CustomButton(
                name: "Create   Quiz",
                onTap: () {
                  if (formKey.currentState?.validate() == true) {

        context.pushReplacement(Uri( path:AppRouter.kAddQuestionView,
                       queryParameters: {
            "num": numberOfQuestionsController.text ,
            "name": nameController.text,
            "maxTime": maxTimeController.text,
            "maxDegree": maxDegreeController.text ,
                        },).toString()
        );

                  }

                },
              ),
            )


          ],
        ));
  }
}
