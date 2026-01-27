import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh_rounded),
            onPressed: () {
              setState(() {
                counter = 0;
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$counter',
              style: const TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                color: Colors.purple,
              ),
            ),
            Text(
              counter == 1 ? 'Click' : 'Clicks',
              style: const TextStyle(
                fontSize: 25,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                if (counter > 0) {
                  counter--;
                }
              });
            },
            backgroundColor: Colors.purple,
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            backgroundColor: Colors.purple,
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
