// ignore_for_file: prefer_final_fields

import 'package:location/location.dart';
import 'package:uuid/uuid.dart';

import '../../models/location_model.dart';

class LocationManager {
  List<LocationModel> _locations = [
    LocationModel(
      id: const Uuid().v1(),
    ),
    LocationModel(id: const Uuid().v1()),
    LocationModel(id: const Uuid().v1()),
    LocationModel(id: const Uuid().v1()),
  ];

  List<LocationModel> get locations => _locations;

  addToLocation() {
    _locations.add(LocationModel(
      id: const Uuid().v1(),
    ));
  }

  removeLocation(String id) {
    _locations.removeWhere((element) => element.id == id);
  }

  fetchLocation(String id, LocationData? data) {
    if (data != null) {
     
      _locations[ _locations.indexWhere((element) => element.id == id)].latitude = data.latitude;
      _locations[ _locations.indexWhere((element) => element.id == id)].longitude = data.longitude;
    }
  }
}
