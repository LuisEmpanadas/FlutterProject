import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter_functions_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 178, 19, 226)),
      ),
      home: const CounterApp(),
    );
  }
}
