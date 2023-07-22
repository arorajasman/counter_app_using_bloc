import 'package:counter_app_bloc/bloc/bloc_exports.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Whole \'HomeScreen\' built');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             BlocListener<CounterBloc, CounterState>(
               listener: (context, state) {
               },
               child: Center(
                           // using the BlocBuilder widget of type <CounterBloc,CounterState>
                           // to listen to the state changes in the Counter Bloc
                             child: BlocBuilder<CounterBloc, CounterState>(
                               builder: (context, state) {
                                 // getting access to the counterValue using the state
                                 return  Text(
                                           'Counter value: ${state.counterValue}',
                                           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                         );
                               },
                             )),
             ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      // using the read<CounterBloc>() to read the states and events
                      // from the counterBloc and using the add() method and passing the 
                      // CounterDecrementEvent() to trigger the event that will decrease
                      // the value of state.CounterValue by 1
                      onPressed: () => context.read<CounterBloc>().add(CounterDecrementEvent()),
                      icon: const Icon(Icons.remove),
                      label: const Text('Decrease'),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Expanded(
                    child: ElevatedButton.icon(
                      // using the read<CounterBloc>() to read the states and events
                      // from the counterBloc and using the add() method and passing the 
                      // CounterIncrementEvent() to trigger the event that will  increase
                      // the value of state.CounterValue by 1
                      onPressed: () => context.read<CounterBloc>().add(CounterIncrementEvent()),
                      icon: const Icon(Icons.add),
                      label: const Text('Increase'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
