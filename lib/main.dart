import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Whats in my food?',
            style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontFamily: 'Arial'),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepOrangeAccent,
        ),
        floatingActionButton: Container(
            width:
                double.infinity, // Set width to occupy the entire screen width
            margin: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              backgroundColor: Colors.green[600],
              onPressed: () {},
              child: const Text('SCAN'),
            )),
      ),
    );
  }
}
