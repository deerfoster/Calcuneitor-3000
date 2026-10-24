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
      home: Scaffold(
        body: Center(
          child: Text('Calcuneitor 3000')
        )
      )
    );
  }
}
