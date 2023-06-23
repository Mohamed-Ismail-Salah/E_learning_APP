part of 'get_Student_profile_ifo_cubit.dart';

@immutable
abstract class GetStudentProfileIfoState {}

class GetStudentProfileIfoInitial extends GetStudentProfileIfoState {}

class GetStudentProfileIfoLoading extends GetStudentProfileIfoState {}

class GetStudentProfileIfoFailure extends GetStudentProfileIfoState {
  final String errMessage;

  GetStudentProfileIfoFailure(this.errMessage);
}
class GetStudentProfileIfoSuccess extends GetStudentProfileIfoState {
  final  ProfileStudentInfoModel profileStudentInf;

  GetStudentProfileIfoSuccess(this.profileStudentInf);
}
