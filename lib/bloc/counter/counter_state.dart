// ignore_for_file: public_member_api_docs, sort_constructors_first

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

  // the method below is generated from dart data class generator extension
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterValue': counterValue,
    };
  }

  // the method below is generated from dart data class generator extension
  factory CounterState.fromMap(Map<String, dynamic> map) {
    return CounterState(
      counterValue: map['counterValue'] as int,
    );
  }
}

// initial state for counter values
class CounterInitial extends CounterState {
  // initializing the counterValue variable and assigning the initial value as 0

  // the code below is used to create the initial state for the CounterValue variable
  const CounterInitial() : super(counterValue: 0);
}

// increment state to be used when increment state is emitted
class IncrementState extends CounterState {
  // the increment state recieves the incrementedValue value as input and
  // using the super() method to assing that to the counterValue
  const IncrementState({required int incrementedValue})
      : super(counterValue: incrementedValue);
}

// decrement state to used when decrement state is emiited
class DecrementState extends CounterState {
  // the decrement state recieves the decrementValue value as input and
  // using the super() method to assing that to the counterValue
  const DecrementState({required int decrementValue})
      : super(counterValue: decrementValue);
}
