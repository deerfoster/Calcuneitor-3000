import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Icon(Icons.menu)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('10', style: TextStyle(fontSize: 100, fontFamily: 'Verdana', fontWeight: FontWeight(100)),),
            Text('Cantidad de clicks', style: TextStyle(fontSize: 20, fontFamily: 'Verdana'))
          ],
        ),
      ) ,
        floatingActionButton: FloatingActionButton(onPressed: (){
          
        },
          child: Icon(Icons.summarize)
      ),
    );
  }
}