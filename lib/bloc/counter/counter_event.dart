part of 'counter_bloc.dart';

// the code below is used to create the events for the bloc
abstract class CounterEvent  {
}

// NOTE: every event extends from its abstract event class 

// the event below is for incrementing the counterValue
class CounterIncrementEvent extends CounterEvent{}

// the event below is for decrementing the counter value
class CounterDecrementEvent extends CounterEvent{}
