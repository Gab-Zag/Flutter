import 'package:easy_container/easy_container.dart';
import 'package:flutte/Segunda_tela.dart';
import 'package:flutter/material.dart';

class Primeiratela extends StatelessWidget {
  const Primeiratela({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: EasyContainer(
            padding: 20,
                elevation: 10,
                onTap: () {
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => SegundaTela()),
                  );
                },
                color: Colors.blueAccent,
                child: RotatedBox(
                  quarterTurns: 1,
                  child: Text('Iniciar contagem de Pontos',style: const TextStyle(color: Colors.white,fontSize: 30,),),
                )
            )
        )
      ],
    );
  }
}