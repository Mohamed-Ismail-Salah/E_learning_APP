import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Core/widgets/custom_button.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/answer_modle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../../../../../Core/widgets/Show_Snackbar.dart';
import '../../../data/modles/Student_quiz_model.dart';
import '../../view_model/answer_cubit/answer_cubit.dart';
import 'buildAnswerOption.dart';
 class StudentQuizDetailsBody extends StatelessWidget {
   final AllQuizModel allQuizModel;
   const StudentQuizDetailsBody({Key? key, required this.allQuizModel})
       : super(key: key);
   @override
   Widget build(BuildContext context) {
     bool isLoading = false;
     return BlocConsumer< AnswerCubit, AnswerState>(
         listener: (context, state) async {
       if (state is AnswerLoading) {
         isLoading = true;
       } else if (state is AnswerSuccess) {
         isLoading = false;

         //context.pop(AppRouter.kCreateAssignment);
         showSnackBar(context, " sent successfully");
       } else if (state is AnswerFailure) {
         isLoading = false;
         showSnackBar(context, state.errMessage);
       }
     },
     builder: (context, state) {
       if (state is AnswerSuccess) {
         return SizedBox(
           height: MediaQuery.of(context).size.height*.5,
           child: Card(

             elevation: 4,
             child: Padding(
               padding: const EdgeInsets.all(16.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text(
                     'Answer submitted successfully!',
                     style: Styles.textStyle25.copyWith(
                       fontWeight: FontWeight.bold,
                       fontSize: 24,
                       color: Colors.blue,
                     ),
                   ),
                     SizedBox(height: MediaQuery.of(context).size.height*.1),
                   Text(
                      state.examDegree,
                     style: Styles.textStyle17.copyWith(
                       fontSize: 20,
                       color: Colors.black,
                     ),
                   ),
                   const SizedBox(height: 20),
                   Container(
                     height: 8,
                     width: double.infinity,
                     decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(4),
                     ),
                     child: FractionallySizedBox(
                       alignment: Alignment.centerLeft,
                       widthFactor: double.parse(state.examDegree[8]) / double.parse(state.examDegree[17]) ,
                       child: Container(
                         decoration: BoxDecoration(
                           color: Colors.green,
                           borderRadius: BorderRadius.circular(4),
                         ),
                       ),
                     ),
                   ),
                 ],
               ),
             ),
           ),
         );



       } else {
         return ModalProgressHUD(
           inAsyncCall: isLoading,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
             child: Column(
               children: [
                 Expanded(
                   child: ListView.builder(
                     shrinkWrap: true,
                     itemCount: allQuizModel.questions.length,
                     itemBuilder: (context, index) {
                       return BuildAnswerOption(
                         index: index,
                         option1: allQuizModel.questions[index].option1,
                         option2: allQuizModel.questions[index].option2,
                         option3: allQuizModel.questions[index].option3,
                         option4: allQuizModel.questions[index].option4,
                         option5: allQuizModel.questions[index].option5,
                         question: allQuizModel.questions[index].question,
                         answerId: allQuizModel.questions[index].id,
                       );
                     },
                   ),
                 ),
                 CustomButton(
                   name: "Submit",
                   onTap: () {
                     context.read<AnswerCubit>().answerQuistions(
                       AnswerModel(
                         quizId: allQuizModel.id,
                         courseId: allQuizModel.courseId,
                         questions: context.read<AnswerCubit>().getAnswer()!,
                       ),
                     );
                   },
                 ),
               ],
             ),
           ),
         );
       }
     },
     );
   }
 }