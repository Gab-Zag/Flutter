import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  runApp(const MyApp());
}

mixin _portraitModeMixin on StatelessWidget{
  @override
  Widget build(BuildContext context){
    _portraitModeOnly();
    return super.build(context);
  }
}

mixin PortraitStatefulModeMixin<T extends StatefulWidget> on State<T>{
  @override
  Widget build(BuildContext context){
    _portraitModeOnly();
    return super.build(context);
  }
  @override
  void dispose(){
    _enableRotation();
    super.dispose();
  }
}

void _portraitModeOnly(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

void _enableRotation(){
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
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
    return Column(
        children: <Widget>[
          Expanded(
              child: Container(
                color: Colors.redAccent,
              )
          ),
          Container(
              height: 40,
              color: Colors.grey
          ),
          Expanded(
              child: Container(
                color: Colors.blueAccent,
              )
          ),
        ]
    );
  }
}
