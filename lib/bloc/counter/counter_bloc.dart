import 'package:counter_app_bloc/bloc/bloc_exports.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

// using HydratedBloc rather than normal bloc to persist the data in the app
// using local storage
class CounterBloc extends HydratedBloc<CounterEvent, CounterState> {
  // in the code below the initial value will come from CounterInitial() instance and
  // is set to 0
  CounterBloc() : super(const CounterInitial()) {
    // The Code below is used to convert the counter events to counter states

    // the code below will execute on counter increment event
    on<CounterIncrementEvent>((event, emit) {
      // using the emit() method to emit the state when counter increment event occurs

      // the emit() method takes CounterState() as iEnput and in that we are passing
      // state.counterValue + 1 to increment the value of counterValue state by 1
      // on CounterIncrement event

      // emitting the IncrementState with incrementValue
      emit(IncrementState(incrementedValue: state.counterValue + 1));
    });

    // the code below will execute on counter decrement event
    on<CounterDecrementEvent>((event, emit) {
      // using the emit() method to emit the state when counter decrement event occurs

      // the emit() method takes CounterState() as input and in that we are passing
      // state.counterValue - 1 to decrement the value of counterValue state by 1
      // on CounterDecrement event

      // emitting DecrementState with Decremented value
      emit(DecrementState(decrementValue: state.counterValue - 1));
    });
  }

  @override
  CounterState? fromJson(Map<String, dynamic> json) {
    // using the fromMap() method from the CounterState and passing the
    // json as input to convert the json data to dart object
    return CounterState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(CounterState state) {
    // using the toMap() method from state instace to convert the data to state
    return state.toMap();
  }
}

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   // in the code below the initial value will come from CounterInitial() instance and
//   // is set to 0
//   CounterBloc() : super(const CounterInitial()) {
//     // The Code below is used to convert the counter events to counter states

//     // the code below will execute on counter increment event
//     on<CounterIncrementEvent>((event, emit) {
//       // using the emit() method to emit the state when counter increment event occurs

//       // the emit() method takes CounterState() as input and in that we are passing
//       // state.counterValue + 1 to increment the value of counterValue state by 1
//       // on CounterIncrement event

//       // emitting the IncrementState with incrementValue
//       emit(IncrementState(incrementedValue: state.counterValue + 1));
//     });

//     // the code below will execute on counter decrement event
//     on<CounterDecrementEvent>((event, emit) {
//       // using the emit() method to emit the state when counter decrement event occurs

//       // the emit() method takes CounterState() as input and in that we are passing
//       // state.counterValue - 1 to decrement the value of counterValue state by 1
//       // on CounterDecrement event

//       // emitting DecrementState with Decremented value
//       emit(DecrementState(decrementValue: state.counterValue - 1));
//     });
//   }
// }
