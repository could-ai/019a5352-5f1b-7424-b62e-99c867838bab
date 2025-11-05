import 'package:flutter/material.dart';

void main() {
  runApp(const JuicefyApp());
}

class JuicefyApp extends StatelessWidget {
  const JuicefyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Juicefy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const JuicefyHomePage(title: 'Juicefy Home Page'),
      // Ensure default route is registered for web safety
      routes: {
        '/': (context) => const JuicefyHomePage(title: 'Juicefy Home Page'),
      },
    );
  }
}

class JuicefyHomePage extends StatefulWidget {
  const JuicefyHomePage({super.key, required this.title});

  final String title;

  @override
  State<JuicefyHomePage> createState() => _JuicefyHomePageState();
}

class _JuicefyHomePageState extends State<JuicefyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Welcome to Juicefy!', style: TextStyle(fontSize: 20)),
            const SizedBox(height: 16),
            const Text('You have pushed the button this many times:'),
            Text('$_counter', style: Theme.of(context).textTheme.headlineMedium),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
