import 'package:assessment/models/location_response.dart';
import 'package:assessment/repository/repository_provider.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/location_model.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  LocationBloc() : super(LocationFinal(locations: repository.locations)) {
    on<AddLocation>((event, emit) => _addLocation(event, emit));
    on<FetchLocation>((event, emit) => _fetchLocation(event, emit));
    on<DeleteLocation>((event, emit) => _deleteLocation(event, emit));
  }

  _addLocation(AddLocation event, emit) {
    emit(LocationLoading());
    repository.addLocation();
    emit(LocationFinal(locations: repository.locations));
  }

  _fetchLocation(FetchLocation event, emit) async {
    LocationResponse? response = await repository.getLocation(event.id);
    emit(LocationLoading());
    response!.status
        ? emit(LocationFinal(locations: repository.locations))
        : emit(LocationError(message: response.message));
    emit(LocationFinal(locations: repository.locations));
  }

  _deleteLocation(DeleteLocation event, emit) {
    emit(LocationLoading());
    repository.deleteLocation(event.id);
    emit(LocationFinal(locations: repository.locations));
  }
}
