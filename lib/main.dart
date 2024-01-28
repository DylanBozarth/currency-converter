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
        backgroundColor: Colors.grey,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey, title: const Text('Do math')),
        body: Column(
          children: [
            Container(
              color: Colors.green,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 50,
              child: const Text('1'), //Selector number 1
            ),
            Container(
              color: Colors.green,
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              height: 50,
              width: 50,
              child: const Text('2'), // selector number 2
            ),
            const Column(
              children: [
                Text('buttons go here'),
              ],
            ),
            const Row(
              children: [
                Center(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('+'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('-'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('X'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('%'),
                )),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add), onPressed: () {}),
      ),
    );
  }
}
// https://www.youtube.com/watch?v=1xipg02Wu8s 5:09 
