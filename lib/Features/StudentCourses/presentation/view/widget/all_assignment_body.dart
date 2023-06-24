
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../courses/presentation/view_models/get_assignment_cubit/get_assignment_cubit.dart';
import 'assignment_details_item.dart';


class AllAssignmentBody extends StatelessWidget {
  const AllAssignmentBody({ Key? key});

  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
           Expanded(
            child: BlocBuilder<GetAssignmentCubit, GetAssignmentState>(
              builder: (context, state) {
                if (state is GetAssignmentLoading) {
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
                } else if (state is GetAssignmentFailure) {
                  return Text(state.errMessage);
                } else if (state is GetAssignmentSuccess) {
                  final assignments = state.allAssignment;
                  if (assignments.isEmpty) {
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
                            "NO assignments.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListView.builder(
                      itemCount: assignments.length,
                      itemBuilder: (context, index) {
                        final assignment = assignments[index];
                        return AssignmentItem(assignmentModel: assignment);
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
                          "No assignments.",
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
