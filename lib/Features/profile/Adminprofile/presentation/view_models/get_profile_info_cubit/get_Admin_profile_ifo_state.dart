part of 'get_Admin_profile_ifo_cubit.dart';

@immutable
abstract class GetAdminProfileIfoState {}

class GetAdminProfileIfoInitial extends GetAdminProfileIfoState {}

class GetAdminProfileIfoLoading extends GetAdminProfileIfoState {}

class GetAdminProfileIfoFailure extends GetAdminProfileIfoState {
  final String errMessage;

  GetAdminProfileIfoFailure(this.errMessage);
}
class GetAdminProfileIfoSuccess extends GetAdminProfileIfoState {
  final  ProfileInfoModel profileInf;

  GetAdminProfileIfoSuccess(this.profileInf);
}
