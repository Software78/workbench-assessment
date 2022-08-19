import 'package:assessment/repository/repository_provider.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'stepper_event.dart';
part 'stepper_state.dart';

class StepperBloc extends Bloc<StepperEvent, StepperInitial> {
  StepperBloc() : super(StepperInitial(repository.currentIndex)) {
    on<Increment>((event, emit) => _increment(event, emit));
    on<Decrement>((event, emit) => _decrement(event, emit));
  }

  _increment(event, emit) {
    repository.incrementStepper();
    emit(StepperInitial(repository.currentIndex));
  }

  _decrement(event, emit) {
    repository.decrementStepper();
    emit(StepperInitial(repository.currentIndex));
  }
}
