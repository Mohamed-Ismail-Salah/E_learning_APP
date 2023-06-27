import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/get_Student_Grades_cubit/get_student_grades_cubit.dart';
import 'Grades_Item.dart';

class StudentsGradesBody extends StatelessWidget{
  const StudentsGradesBody({super.key});

  @override
  Widget build(BuildContext context) {
  return  BlocBuilder<GetStudentGradesCubit, GetStudentGradesState>(
        builder: (context, state) {
      if (state is GetStudentGradesLoading) {
        return  Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(height: 16),
              Text('Loading...'),
            ],
          ),
        );
      } else if (state is GetStudentGradesFailure) {
        return Text(state.errMessage);
      } else if (state is GetStudentGradesSuccess) {
        final allStudentGrades = state.allStudentGrades;
        if (allStudentGrades.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(
                "assets/images/no-task.png",
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  "No students took an exam",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          );
        } else {
          return ListView.builder(
     itemCount:allStudentGrades.length,
     itemBuilder: (context, index) {
       final  StudentGrades = allStudentGrades[index];
       return StudentsGradesItem(
          studentGradesModel: StudentGrades ,
       );
     },
   );
  }

}else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              "assets/images/no-task.png",
              height: 100,
              width: 100,
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "No students took an exam" ,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        );
      }
        },
  );
  }


}
