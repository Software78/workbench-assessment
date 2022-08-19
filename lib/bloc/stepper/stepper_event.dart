part of 'stepper_bloc.dart';

abstract class StepperEvent extends Equatable {
  const StepperEvent();

  @override
  List<Object> get props => [];
}

class Increment extends StepperEvent {
  const Increment();

  @override
  List<Object> get props => [];
}

class Decrement extends StepperEvent {
  const Decrement();

  @override
  List<Object> get props => [];
}
