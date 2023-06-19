part of 'update_profile_cubit.dart';

@immutable
abstract class UpdateProfileState {}

class UpdateProfileInitial extends UpdateProfileState {}

class UpdateProfileLoading extends UpdateProfileState {}

class UpdateProfileFailure extends UpdateProfileState {
  final String errMessage;

  UpdateProfileFailure(this.errMessage);
}
class UpdateProfileSuccess extends UpdateProfileState {
  final  ProfileDataModel profileInf;

  UpdateProfileSuccess(this.profileInf);
}
