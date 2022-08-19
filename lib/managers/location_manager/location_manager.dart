// ignore_for_file: prefer_final_fields

import 'package:location/location.dart';

import '../../models/location_model.dart';

class LocationManager {
  List<LocationModel> _locations = [
    LocationModel(id: 0),
    LocationModel(id: 1),
    LocationModel(id: 2),
    LocationModel(id: 3),
  ];

  List<LocationModel> get locations => _locations;

  addToLocation() {
    _locations.add(LocationModel(id: _locations.length));
  }

  removeLocation(int id) {
    _locations.removeWhere((element) => element.id == id);
  }

  fetchLocation(int id, LocationData? data) {
    if (data != null) {
      _locations[id].latitude = data.latitude;
      _locations[id].longitude = data.longitude;
    }
  }
}
