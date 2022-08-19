part of 'location_bloc.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object> get props => [];
}

class LocationLoading extends LocationState {}

class LocationFinal extends LocationState {
  final List<LocationModel> locations;

  const LocationFinal({required this.locations});

  @override
  List<Object> get props => [locations];
}

class LocationError extends LocationState {
  final String message;

  const LocationError({required this.message});

  @override
  List<Object> get props => [message];

}
