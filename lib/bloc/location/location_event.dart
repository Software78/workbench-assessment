part of 'location_bloc.dart';

abstract class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class AddLocation extends LocationEvent {
  const AddLocation();

  @override
  List<Object> get props => [];
}

class DeleteLocation extends LocationEvent {
  final int  id;

  const DeleteLocation({required this.id});

  @override
  List<Object> get props => [id];
}

class FetchLocation extends LocationEvent {
  final int id;

  const FetchLocation({required this.id});

  @override
  List<Object> get props => [id];
}
