import 'package:assessment/managers/stepper_manager/stepper_manager.dart';
import 'package:assessment/models/location_model.dart';
import 'package:assessment/models/location_response.dart';

import '../managers/location_manager/location_manager.dart';
import '../services/location_service.dart';

class Repository {
  Repository._privateConstructor();
  static final Repository instance = Repository._privateConstructor();

  final LocationManager _locationManager = LocationManager();
  final LocationService _locationService = LocationService();
  final StepperManager _stepperManager = StepperManager();

  int get currentIndex => _stepperManager.currentIndex;
  List<LocationModel> get locations => _locationManager.locations;

  incrementStepper() {
    _stepperManager.increment();
  }

  decrementStepper() {
    _stepperManager.decrement();
  }

  Future<LocationResponse>? getLocation(String id) async {
    LocationResponse data = await _locationService.getLocation();
    _locationManager.fetchLocation(id, data.location);
    return data;
  }

  deleteLocation(String id) {
    _locationManager.removeLocation(id);
  }

  addLocation() {
    _locationManager.addToLocation();
  }
}
