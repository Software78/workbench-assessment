import 'package:location/location.dart';

class LocationResponse {
  final bool status;
  final String message;
  final LocationData? location;

  LocationResponse(
    this.location , {
    required this.status,
    required this.message,
  });
}
