part of 'update_Student_profile_cubit.dart';

@immutable
abstract class UpdateStudentProfileState {}

class UpdateStudentProfileInitial extends UpdateStudentProfileState {}

class UpdateStudentProfileLoading extends UpdateStudentProfileState {}

class UpdateStudentProfileFailure extends UpdateStudentProfileState {
  final String errMessage;

  UpdateStudentProfileFailure(this.errMessage);
}
class UpdateStudentProfileSuccess extends UpdateStudentProfileState {
  final  ProfileStudentDataModel profileStudentInf;

  UpdateStudentProfileSuccess(this.profileStudentInf);
}
