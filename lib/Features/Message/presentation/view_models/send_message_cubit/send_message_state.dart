part of 'send_message_cubit.dart';

@immutable
abstract class SendMessageState {}

class SendMessageInitial extends SendMessageState {}

class SendMessageLoading extends SendMessageState {}

class SendMessageFailure extends SendMessageState {
  final String errMessage;

  SendMessageFailure(this.errMessage);
}
class SendMessageSuccess extends SendMessageState {

}
