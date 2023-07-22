part of 'counter_bloc.dart';

// contains all the states for the Counter bloc
class CounterState extends Equatable {
  // creating a state to get the counter value
  final int counterValue;

  // initializing the counter value
  const CounterState({required this.counterValue});
  
  // passing the counterValue to the props
  @override
  List<Object> get props => [counterValue];
}

class CounterInitial extends CounterState {
  // initializing the counterValue variable and assigning the initial value as 0

  // the code below is used to create the initial state for the CounterValue variable
  const CounterInitial() : super(counterValue: 0);
}
