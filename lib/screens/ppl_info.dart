import 'package:flutter/material.dart';

class DeveloperInfo extends StatelessWidget {
  const DeveloperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      appBar: AppBar(
        title: Text('About', style: TextStyle(color: Colors.brown[600]),),
        backgroundColor: Colors.pink[100],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(48.0)),
            CircleAvatar(
              radius: 100.0,
              child: Icon(Icons.person_search, size: 100.0, color: Colors.brown[600]),
            ),
            SizedBox(
              height: 16,
            ),
            Card(
              color: Colors.brown[200],
              elevation: 2,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
              child: Padding(padding: EdgeInsets.all(30.0)),
            )
          ],
        ),
      ),
    );
  }

}