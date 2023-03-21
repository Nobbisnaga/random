import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'dart:math';



class MyRandom extends StatefulWidget {
  const MyRandom({super.key});

  @override
  State<MyRandom> createState() => _MyRandomState();
}

class _MyRandomState extends State<MyRandom> {
  List<String> frases = [
    "Vai Trabalhar!",
    "Teu cu!",
    "Estuda que passa!",
    "Deprê é o carai!"
  ];

  String _mostraMensagem(){
    var numAleatorio = Random().nextInt(frases.length);
    return frases[numAleatorio];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:Drawer(
        child: Column(children: [
          UserAccountsDrawerHeader(
            accountName: Text('Math@hotmail.com'),
            accountEmail: Text("Math"))
        ],
        ),
      ),
      appBar: AppBar(
        title:Text('SnackBar'),
        actions: [
          IconButton(


            onPressed: (){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_mostraMensagem()),
          dismissDirection: DismissDirection.horizontal,
          action: SnackBarAction(
            label: "Hmm, é Mesmo?",
            onPressed: (){}),
          ),
      );


            },
            icon:Icon(
                Icons.wheelchair_pickup,
                weight: 20,
                size: 40,
              ),
            ),
        ],
      ),
    );
  }
}