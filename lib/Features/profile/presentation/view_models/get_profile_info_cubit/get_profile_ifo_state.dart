part of 'get_profile_ifo_cubit.dart';

@immutable
abstract class GetProfileIfoState {}

class GetProfileIfoInitial extends GetProfileIfoState {}

class GetProfileIfoLoading extends GetProfileIfoState {}

class GetProfileIfoFailure extends GetProfileIfoState {
  final String errMessage;

  GetProfileIfoFailure(this.errMessage);
}
class GetProfileIfoSuccess extends GetProfileIfoState {
  final  ProfileInfoModel profileInf;

  GetProfileIfoSuccess(this.profileInf);
}
