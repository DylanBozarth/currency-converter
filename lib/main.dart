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
  int? firstOperator;
  int? secondOperator;
  bool operatorSwitch = false;

  void setFirstOperator(int newValue) {
    setState(() {
      firstOperator = newValue; // Set the value of myNumber to the argument
    });
  }

  void setSecondOperator(int newValue) {
    setState(() {
      secondOperator = newValue; // Set the value of myNumber to the argument
    });
  }

  void determineOperator(int newValue) {
    if (operatorSwitch = true) {
      setFirstOperator(newValue);
    } else {
      setSecondOperator(newValue);
    }
  }

  void changeOperator() {
    print(operatorSwitch);
    setState(() {
      operatorSwitch = false;
    });
  }

  void clearAll() {
    setState(() {
      operatorSwitch = false;
    });
    setState(() {
      firstOperator = null; // Set the value of myNumber to the argument
    });
    setState(() {
      secondOperator = null; // Set the value of myNumber to the argument
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
                  child: Text('$secondOperator'), // selector number 2
                )
              ],
            ),
            Wrap(
              alignment: WrapAlignment
                  .start, // Align children to the start of each line
              children: [
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(1);
                  },
                  child: const Text('1'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(2);
                  },
                  child: const Text('2'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(3);
                  },
                  child: const Text('3'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(4);
                  },
                  child: const Text('4'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(5);
                  },
                  child: const Text('5'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(6);
                  },
                  child: const Text('6'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(7);
                  },
                  child: const Text('7'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(8);
                  },
                  child: const Text('8'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(9);
                  },
                  child: const Text('9'),
                )),
                Card(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    determineOperator(0);
                  },
                  child: const Text('0'),
                ))
              ],
            ),
            Row(
              children: [
                Center(
                    child: ElevatedButton(
                  onPressed: changeOperator,
                  child: const Text('+'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: changeOperator,
                  child: const Text('-'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: changeOperator,
                  child: const Text('X'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: changeOperator,
                  child: const Text('%'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: clearAll,
                  child: const Text('CLEAR'),
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
