part of 'get_message_data_cubit.dart';

@immutable
abstract class GetMessageDataState {}

class GetMessageDataInitial extends GetMessageDataState {}
class GetMessageDataLoading extends GetMessageDataState {}

class GetMessageDataFailure extends GetMessageDataState {
  final String errMessage;

  GetMessageDataFailure(this.errMessage);
}
class GetMessageDataSuccess extends GetMessageDataState {
  final List<MessageDataModel> allMessage;

  GetMessageDataSuccess(this.allMessage);
}