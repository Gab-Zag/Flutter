import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'NRC  Contagem de Pontos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int _counter2 = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2(){
    setState(() {
      _counter2++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 407.500,

            child: FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 1,
              child: ElevatedButton(
                child: Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headlineSmall,
                  ),
                onPressed: _incrementCounter,
              ),
            ),
          ),

          Container(
            height: 407.500,

            child: FractionallySizedBox(
              widthFactor: 2,
              heightFactor: 1,
              child: ElevatedButton(
                child: Text(
                  '$_counter2',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                onPressed: _incrementCounter2,
              ),
            ),
          )
        ],
      ),
    );
  }
}
