import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.menu)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('$counter', style: TextStyle(fontSize: 100, fontFamily: 'Verdana', fontWeight: FontWeight(100)),),
            Text('Calculadora', style: TextStyle(fontSize: 20, fontFamily: 'Verdana'))
          ],
        ),
      ) ,
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(onPressed: (){
              setState(() {
                counter+=1;
              });
            },
            child: const Text('1')),
            const SizedBox(width: 30,),
            FloatingActionButton(onPressed: (){
              setState(() {
                counter+=2;
              });
            },
            child: const Text('2')),
            const SizedBox(width: 30,),
            FloatingActionButton(onPressed: (){
              setState(() {
                counter+=2;
              });
            },
            child: const Text('3')),
            const SizedBox(width: 30,),
            FloatingActionButton(onPressed: (){
              setState(() {
                counter=0;
              });
            },
            child: const Text('CC')),
          ],
        ),
    );
  }
}