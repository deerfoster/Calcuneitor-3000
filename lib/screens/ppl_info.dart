import 'package:flutter/material.dart';

class DeveloperInfo extends StatelessWidget {
  const DeveloperInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('About me', style: TextStyle(color: Colors.brown[600], fontWeight: FontWeight.bold)),
        backgroundColor: Colors.pink[200]!.withValues(alpha: 0.25),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(48.0),
              child: Column(
                children: [
                        SizedBox(
                          height: 30,
                        ),
                        CircleAvatar(
                          radius: 90.0,
                          backgroundColor: Colors.pink[200]!.withValues(alpha: 0.25),
                          child: Icon(Icons.person_search, size: 100.0, color: Colors.brown[600]),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Xariadna Perez',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.brown[700],
                          ),
                        ),
                        const SizedBox(height: 6.0),
                        Text(
                          'Systems Engineering Student & Developer',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown[500],
                          ),
                        ),
                        const SizedBox(height: 16.0),
                        Divider(color: Colors.brown[300]?.withValues(alpha: 0.3)),
                        const SizedBox(height: 16.0),
                        Text(
                          'Student with love for personalization & logic. Calcuneitor 3000 combines design and operatibility. The name of the app is a combination between Calculator and Exterminaitor.', 
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.brown[600],
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Text(
                          'This app was made with C#, Java, Dart & Flutter.',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontStyle: FontStyle.italic,
                            color: Colors.brown[500],
                          ),
                        ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}