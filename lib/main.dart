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
  int firstOperator = 0;
  int secondOperator = 0;
  bool operatorSwitch = false;
  String mathOperator = '';
  int solution = 0;

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

  void appendDigit(int digit) {
    if (operatorSwitch == true) {
      setState(() {
        // Convert the current number to a string, concatenate the new digit, and convert it back to an integer
        firstOperator = int.parse('$firstOperator$digit');
      });
    } else {
      setState(() {
        // Convert the current number to a string, concatenate the new digit, and convert it back to an integer
        secondOperator = int.parse('$secondOperator$digit');
      });
    }
  }

  void determineOperator(int newValue) {
    if (operatorSwitch == true) {
      appendDigit(newValue);
    } else {
      appendDigit(newValue);
    }
  }

  void changeOperator(String newOperand) {
    setState(() {
      operatorSwitch = false;
    });
    setState(() {
      mathOperator = newOperand;
    });
  }

  void clearAll() {
    setState(() {
      operatorSwitch = true;
      firstOperator = 0;
      secondOperator = 0;
      solution = 0;
    });
  }

  int doMath() {
    switch (mathOperator) {
      case 'X':
        setState(() {
          solution = firstOperator * secondOperator;
        });
        break;
      case '%':
        setState(() {
          solution = firstOperator % secondOperator;
        });
        break;
      case '+':
        setState(() {
          solution = firstOperator + secondOperator;
        });
        break;
      case '-':
        setState(() {
          solution = firstOperator - secondOperator;
        });
        break;
    }
    return solution;
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
                ),
                Container(
                  color: Colors.green,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 100,
                  width: 100,
                  child: Text('$solution'), // Solution
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
                  onPressed: () {
                    // Pass a value when the button is pressed
                    changeOperator('+');
                  },
                  child: const Text('+'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    changeOperator('-');
                  },
                  child: const Text('-'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    changeOperator('X');
                  },
                  child: const Text('X'),
                )),
                Center(
                    child: ElevatedButton(
                  onPressed: () {
                    // Pass a value when the button is pressed
                    changeOperator('%');
                  },
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
        floatingActionButton: FloatingActionButton(
            onPressed: doMath, child: const Icon(Icons.numbers_sharp)),
      ),
    );
  }
}
// https://www.youtube.com/watch?v=1xipg02Wu8s 5:09 
