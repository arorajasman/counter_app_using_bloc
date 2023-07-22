import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // in the code below the initial value will come from CounterInitial() instance and
  // is set to 0
  CounterBloc() : super(const CounterInitial()) {
    // The Code below is used to convert the counter events to counter states
      
    // the code below will execute on counter increment event
    on<CounterIncrementEvent>((event, emit) {
      // using the emit() method to emit the state when counter increment event occurs

      // the emit() method takes CounterState() as input and in that we are passing
      // state.counterValue + 1 to increment the value of counterValue state by 1 
      // on CounterIncrement event
      emit(CounterState(counterValue: state.counterValue + 1));
    });


    // the code below will execute on counter decrement event
    on<CounterDecrementEvent>((event, emit) {
      // using the emit() method to emit the state when counter decrement event occurs

      // the emit() method takes CounterState() as input and in that we are passing
      // state.counterValue - 1 to decrement the value of counterValue state by 1 
      // on CounterDecrement event
      emit(CounterState(counterValue: state.counterValue - 1));
    });
  }
}
