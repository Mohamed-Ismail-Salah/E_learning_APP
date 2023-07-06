import 'package:e_learning/Features/ReceiveStudentMessages/presentain/view_model/get_message_data_cubit/get_message_data_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'message_item.dart';

class AllMessageBody extends StatelessWidget {
  const AllMessageBody({super.key});

  @override
  Widget build(context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Expanded(
            child: BlocBuilder<GetMessageDataCubit, GetMessageDataState>(
              builder: (context, state) {
                if (state is GetMessageDataLoading) {
                  return Container(
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
                }
                else if (state is GetMessageDataFailure) {
                  return Text(state.errMessage);
                } else if (state is GetMessageDataSuccess) {
                  final message = state.allMessage;
                      if (message.isEmpty) {
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
                            "NO  Message.",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    );
                     } else {
                  return  ListView.builder(
                      itemCount: message.length,
                      itemBuilder: (context, index) {
                        final messageItem = message[index];
                        return MessageItem(messageDataModel: messageItem,);
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
