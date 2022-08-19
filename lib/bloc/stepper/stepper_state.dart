part of 'stepper_bloc.dart';

abstract class StepperState extends Equatable {
  const StepperState();

  @override
  List<Object> get props => [];
}

class StepperInitial extends StepperState {
  final int currentIndex;

const  StepperInitial( this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}


class StepperFinal extends StepperState {
final   int currentIndex;

const  StepperFinal( this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
