import 'package:counter_app_bloc/bloc/bloc_exports.dart';
import 'package:counter_app_bloc/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  // using the BLOC observer to listen to the states
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // the code below is to use the bloc provider to listen to the state changes
    // in the CounterBloc
    return BlocProvider(
      // here our create for Bloc provider is counter bloc
      create: (context) => CounterBloc(),
      child: MaterialApp(
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const HomeScreen(),
        ),
    );
  }
}
