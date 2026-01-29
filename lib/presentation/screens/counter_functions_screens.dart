import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp(
      {Key? key, required this.onToggleTheme, required this.isDarkMode})
      : super(key: key);

  final VoidCallback onToggleTheme;
  final bool isDarkMode;

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
            icon: Icon(widget.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: widget.onToggleTheme,
            tooltip: 'Toggle theme',
          ),
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
              style: TextStyle(
                fontSize: 160,
                fontWeight: FontWeight.w100,
                color: widget.isDarkMode
                    ? Colors.white
                    : (counter == 12 ? Colors.purple : Colors.black),
              ),
            ),
            Text(
              counter == 1 ? 'Click' : 'Clicks',
              style: TextStyle(
                fontSize: 25,
                color: widget.isDarkMode
                    ? Colors.white
                    : (counter == 12 ? Colors.purple : Colors.black),
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
