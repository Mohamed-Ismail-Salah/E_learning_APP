
import 'package:e_learning/Features/StudentCourses/presentation/view_model/get_Student_Quiz_cubit/getQuiz_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/Utils/app_router.dart';
import 'Admin_Quiz_Item.dart';
import 'course_app_bar.dart';
 class AllAdminQuizBody extends StatelessWidget {
  const AllAdminQuizBody({ Key? key});

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          AppBarWidget(page: AppRouter.kCreateQuiz, title: 'All Quiz',),

          Expanded(
            child: BlocBuilder<GetStudentQuizCubit, GetStudentQuizState>(
              builder: (context, state) {
                if (state is GetStudentQuizLoading) {
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
                } else if (state is GetStudentQuizFailure) {
                  return Text(state.errMessage);
                } else if (state is GetStudentQuizSuccess) {
                  final allQuiz = state.allQuiz;
                  if (allQuiz.isEmpty) {
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
                            "NO Quiz",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListView.builder(
                      itemCount: allQuiz.length,
                      itemBuilder: (context, index) {
                        final Quiz = allQuiz[index];
                        return AdminQuizItem(allQuizModel: Quiz,);
                      },
                    );
                  }
                } else {
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
                          "NO Quiz" ,
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }


}
