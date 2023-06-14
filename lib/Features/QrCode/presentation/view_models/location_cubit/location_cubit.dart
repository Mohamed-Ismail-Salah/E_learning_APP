import 'package:bloc/bloc.dart';
import 'package:location/location.dart';
import 'package:meta/meta.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  final Location _location = Location();
  String latitude="0";
  String longitude="0";

  Future<void> getLocation() async {
    emit(LocationLoading());
    try {
      final LocationData locationData = await _location.getLocation();
      latitude= locationData.latitude! as String;
    longitude= locationData.longitude! as String;
      emit( LocationSuccess(latitude,longitude));
    } catch (e) {
    emit(LocationFailure("Check data"));
    }
  }
}
