import 'package:e_learning/Core/Utils/app_router.dart';
import 'package:e_learning/Features/Message/data/models/student_inf_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../Core/Utils/styles.dart';
import '../../view_models/get_student_cubit/get_student_cubit.dart';

class StudentItem extends StatelessWidget {
   StudentItem({super.key,
     required this.studentInfModel,
    required this.name,
    required this.email,


  });
   StudentInfModel studentInfModel;
  String name;
  String email;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        BlocProvider.of<GetStudentCubit>(context).setStudentInfoModel(studentInfModel);
context.push(AppRouter.kStudentDetailsView);

      },
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Text(
                    name ,
                    style: Styles.textStyle17,
                  ),
                  const Spacer(),
                  Flexible(
                    child: Text(
                       email,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle17,
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.black,
              thickness: 0.7,
            ),
          ],
        ),
      ),
    );
  }
}