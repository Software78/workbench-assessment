import 'package:assessment/models/location_response.dart';
import 'package:location/location.dart';

class LocationService {
  final Location _location = Location();

  getPermissions() async {
    bool serviceEnabled = await _location.serviceEnabled();
    if (!serviceEnabled) {
      await _location.requestService();
    }
    PermissionStatus permissionStatus = await _location.hasPermission();
    if (permissionStatus == PermissionStatus.denied) {
      await _location.requestPermission();
    }
  }

  Future<LocationResponse> getLocation() async {
    late LocationResponse locationResponse;
    PermissionStatus permissionStatus = await _location.hasPermission();
    try {
      if (permissionStatus == PermissionStatus.granted) {
        LocationData data = await _location.getLocation();
        locationResponse =
            LocationResponse(data, status: true, message: 'success');
      } else {
        await _location.requestPermission();
        LocationData data = await _location.getLocation();
        locationResponse =
            LocationResponse(data, status: true, message: 'success');
      }
    } catch (e) {
      locationResponse =
          LocationResponse(null, status: false, message: e.toString());
    }
    return locationResponse;
  }
}
