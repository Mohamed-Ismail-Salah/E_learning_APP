part of 'update_profile_cubit.dart';

@immutable
abstract class UpdateAdminProfileState {}

class UpdateAdminProfileInitial extends UpdateAdminProfileState {}

class UpdateAdminProfileLoading extends UpdateAdminProfileState {}

class UpdateAdminProfileFailure extends UpdateAdminProfileState {
  final String errMessage;

  UpdateAdminProfileFailure(this.errMessage);
}
class UpdateAdminProfileSuccess extends UpdateAdminProfileState {
  final  ProfileDataModel profileInf;

  UpdateAdminProfileSuccess(this.profileInf);
}
