import 'package:calcuneitor_3000/screens/homescreen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Calcuneitor());
}

class Calcuneitor extends StatelessWidget{
  const Calcuneitor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.pink[200],
      ),
      home: HomeScreen()
    );
  }
}
