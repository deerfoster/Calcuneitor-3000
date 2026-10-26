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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(48.0),
              child: Column(
                children: [

                ],
              ),
            ),
            CircleAvatar(
              radius: 100.0,
              child: Icon(Icons.person_search, size: 100.0, color: Colors.brown[600]),
            ),
            SizedBox(
              height: 50,
            ),
            Container( width: double.infinity,
              child:
                Card(
                  margin: EdgeInsets.zero,
                  color: Colors.brown[200],
                  elevation: 2,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.horizontal()),
                  child: Padding(padding: EdgeInsets.all(20.0),
                    child: Column(

                  ),
                ),
              )
            )
          ],
        ),
      ),
    );
  }

}