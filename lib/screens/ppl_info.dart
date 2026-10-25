import 'package:flutter/material.dart';

class DeveloperInfo extends StatelessWidget {
  const DeveloperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Developer'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.pink[100],
            )
          ],
        ),
      ),
    );
  }

}