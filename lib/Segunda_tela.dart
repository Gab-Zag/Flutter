import 'package:easy_container/easy_container.dart';
import 'package:flutter/material.dart';

class SegundaTela extends StatefulWidget {
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  int _counter = 0;
  int _counter2 = 0;

  void _incrementCounter(){
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
              child: EasyContainer(
                padding: 20,
                elevation: 10,
                onTap: () => _incrementCounter(),
                color: Colors.redAccent,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text('$_counter',style: const TextStyle(color: Colors.white,fontSize: 30,),),
                )
              )
          ),
          FilledButton(
            onPressed: (){
              Navigator.pop(context);
            }, 
            child: RotatedBox(
              quarterTurns: 1,
              child: const Icon(
              Icons.upload_rounded,
            ),
            ) 
          ),
          Expanded(
              child: EasyContainer(
                padding: 20,
                elevation: 10,
                onTap: () => _incrementCounter2(),
                color: Colors.blueAccent,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text('$_counter2',style: const TextStyle(color: Colors.white,fontSize: 30,),),
                )
              )
          ),
        ]
    );
  }
}
