import 'dart:ffi';

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
  String data = 'Initial Data'; // state is here
  int firstOperator = 0;
  int secondOperator = 0;
  void test() {
    setState(() {
      data = 'BLAH';
    });
  }

  void setFirstOperator(int newValue) {
    setState(() {
      firstOperator = newValue; // Set the value of myNumber to the argument
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
            backgroundColor: Colors.blueGrey, title: const Text('Do math')),
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Text('$firstOperator'), //Selector number 1
                ),
                Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: const Text('Selector number 2'), // selector number 2
                )
              ],
            ),
            const Wrap(
              alignment: WrapAlignment
                  .start, // Align children to the start of each line
              children: [
                Card(
                    child: ElevatedButton(
                  onPressed: setFirstOperator(1),
                  child: Text('1'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('2'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('3'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('4'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('5'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('6'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('7'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('8'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('9'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: null,
                  child: Text('0'),
                ))
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
        floatingActionButton: const FloatingActionButton(
            onPressed: null, child: Icon(Icons.people_outline)),
      ),
    );
  }
}
// https://www.youtube.com/watch?v=1xipg02Wu8s 5:09 
