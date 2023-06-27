import 'package:e_learning/Core/Utils/styles.dart';
import 'package:e_learning/Features/StudentCourses/data/modles/answer_modle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_model/answer_cubit/answer_cubit.dart';

class BuildAnswerOption extends StatefulWidget {
  int answerId;
int index;
  final String question;
  final String option1;
  final String option2;
  final String option3;
  final String option4;
  final String option5;

  BuildAnswerOption({
    Key? key,
    required this.answerId,
     required this.index,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.option4,
    required this.option5,
    required this.question,
  }) : super(key: key);

  @override
  _BuildAnswerOptionState createState() => _BuildAnswerOptionState();
}

class _BuildAnswerOptionState extends State<BuildAnswerOption> {
  String? selectedOption;
   @override
  Widget build(BuildContext context) {
    AnswerQuestionModel answerQuestionModel;
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.question,
            style: Styles.textStyle25.copyWith(fontWeight: FontWeight.w900),
          ),
          const SizedBox(height: 20),
          RadioListTile<String>(
             selectedTileColor: Colors.green,
            title: Text(widget.option1),
            value: widget.option1,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
                answerQuestionModel=AnswerQuestionModel(id:widget.answerId, answer: value!);
                context.read<AnswerCubit>().setAnswer(answerQuestionModel,widget.index);
              });
            },
          ),
          RadioListTile<String>(
            title: Text(widget.option2),
            value: widget.option2,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
                answerQuestionModel=AnswerQuestionModel(id:widget.answerId, answer: value!);
                context.read<AnswerCubit>().setAnswer(answerQuestionModel,widget.index);
              });
            },
          ),
          RadioListTile<String>(
            title: Text(widget.option3),
            value: widget.option3,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
                answerQuestionModel=AnswerQuestionModel(id:widget.answerId, answer: value!);
                context.read<AnswerCubit>().setAnswer(answerQuestionModel,widget.index);
              });
            },
          ),
          RadioListTile<String>(
            title: Text(widget.option4),
            value: widget.option4,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
                answerQuestionModel=AnswerQuestionModel(id:widget.answerId, answer: value!);
                context.read<AnswerCubit>().setAnswer(answerQuestionModel,widget.index);
              });
            },
          ),
          RadioListTile<String>(
            title: Text(widget.option5),
            value: widget.option5,
            groupValue: selectedOption,
            onChanged: (value) {
              setState(() {
                selectedOption = value;
                answerQuestionModel=AnswerQuestionModel(id:widget.answerId, answer: value!);
                context.read<AnswerCubit>().setAnswer(answerQuestionModel,widget.index);
              });
            },
          ),
        ],
      ),
    );
  }
}

