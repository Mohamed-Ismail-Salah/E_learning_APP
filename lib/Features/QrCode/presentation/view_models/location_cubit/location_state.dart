part of 'location_cubit.dart';

@immutable
abstract class LocationState {}

class LocationInitial extends LocationState {}

class LocationLoading extends LocationState {}
class LocationFailure extends LocationState {
  final String errMessage;

  LocationFailure(this.errMessage);
}

class LocationSuccess  extends LocationState{
  final  String latitude;
  final String longitude;
  LocationSuccess(this.latitude, this.longitude );
}
