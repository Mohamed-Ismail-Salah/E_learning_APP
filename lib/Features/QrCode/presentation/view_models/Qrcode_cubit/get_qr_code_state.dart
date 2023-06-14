part of 'qr_code_cubit.dart';

@immutable
abstract class QrCodeState {}

class GetQrCodeInitial extends QrCodeState {}
class GetQrCodeLoading extends QrCodeState {}

class GetQrCodeFailure extends QrCodeState {
  final String errMessage;

  GetQrCodeFailure(this.errMessage);
}
class GetQrCodeSuccess extends QrCodeState {
  final List<QrCodeModel> allQrCode;

  GetQrCodeSuccess(this.allQrCode);
}

class StudentAttendanceInitial extends QrCodeState {}
class StudentAttendanceLoading extends QrCodeState {}

class StudentAttendanceFailure extends QrCodeState {
  final String errMessage;

  StudentAttendanceFailure(this.errMessage);
}
class StudentAttendanceSuccess extends QrCodeState {
  final List allStudentAttendance;

  StudentAttendanceSuccess(this.allStudentAttendance);
}
