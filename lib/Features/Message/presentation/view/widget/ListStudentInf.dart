import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../view_models/get_student_cubit/get_student_cubit.dart';
import 'student_item.dart';

class ListStudentInf extends StatelessWidget {
  const ListStudentInf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetStudentCubit, GetStudentState>(
          builder: (context, state) {
            if (state is GetStudentLoading) {
              return const Center(child:   CircularProgressIndicator());
            } else if (state is GetStudentSuccess) {
              return Flexible(
                child: ListView.builder(
                  itemCount: state.studentInf.length,
                  itemBuilder: (context, index) {

                    return StudentItem(name: state.studentInf[index].name,
                      email: state.studentInf[index].email,
                      studentInfModel:state.studentInf[index],
                    );
                  },
                ),
              );
            } else if (state is GetStudentFailure) {return Text('An error occurred: ${state.errMessage}');
            }

            return Container();
          },

    );
  }
}
