import 'package:currencyconverter/basics.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MathMaker());
}

class MathMaker extends StatefulWidget {
  const MathMaker({super.key});

  @override
  State<MathMaker> createState() => _MathMakerState();
}

class _MathMakerState extends State<MathMaker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.blueGrey, title: const Text('Do math')),
            body: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              color: Colors.green,
              height: 50,
              width: 50,
              child: const Text('1'),
            )));
  }
}
// https://www.youtube.com/watch?v=1xipg02Wu8s 5:09 
