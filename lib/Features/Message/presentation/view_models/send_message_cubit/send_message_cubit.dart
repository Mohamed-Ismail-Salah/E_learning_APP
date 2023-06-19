import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:e_learning/Features/Message/data/send_message/send_message_repo.dart';
import 'package:meta/meta.dart';


part 'send_message_state.dart';

class SendMessageCubit extends Cubit<SendMessageState> {
  SendMessageCubit(this.sendMessageRepo ) : super(SendMessageInitial());

  final SendMessageRepo  sendMessageRepo;

  Future<void> sendMessage( String message,String fatherEmail,
      //File file
      )async
  {
    emit(SendMessageLoading());

    var result =  await sendMessageRepo.sendMessage(message, fatherEmail,
    //    file
    );
    if (result != null) {
      emit(SendMessageFailure(result.errmessage));
    } else {
      emit(SendMessageSuccess());
    }
  }
}




