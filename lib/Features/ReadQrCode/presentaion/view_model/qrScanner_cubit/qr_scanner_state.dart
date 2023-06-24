part of 'qr_scanner_cubit.dart';

@immutable
abstract class QrScannerState {}

class QrScannerInitial extends QrScannerState {}
class QrScannerLoading extends QrScannerState {}
class QrScannerFailure extends QrScannerState {
  final String errMessage;

  QrScannerFailure(this.errMessage);
}

class QrScannerSuccess  extends QrScannerState{
  final  String  status;

  QrScannerSuccess(  this.status );
}
