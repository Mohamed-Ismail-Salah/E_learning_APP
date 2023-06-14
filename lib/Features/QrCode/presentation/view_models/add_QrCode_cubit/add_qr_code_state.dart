part of 'add_qr_code_cubit.dart';

@immutable
abstract class AddQrCodeState {}

class AddQrCodeInitial extends AddQrCodeState {}

class AddQrCodeLoading extends AddQrCodeState {}

class AddQrCodeFailure extends AddQrCodeState {
  final String errMessage;

  AddQrCodeFailure(this.errMessage);
}
class AddQrCodeSuccess extends AddQrCodeState {
  final String  code;

  AddQrCodeSuccess(this.code);
}
