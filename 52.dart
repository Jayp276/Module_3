import "package:flutter/material.dart";

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController number1Controller = TextEditingController();
  TextEditingController number2Controller = TextEditingController();
  String operation = 'Add';
  double result = 0;

  void calculate() {
    double num1 = double.tryParse(number1Controller.text) ?? 0;
    double num2 = double.tryParse(number2Controller.text) ?? 0;

    setState(() {
      switch (operation) {
        case 'Add':
          result = num1 + num2;
          break;
        case 'Subtraction':
          result = num1 - num2;
          break;
        case 'Multiply':
          result = num1 * num2;
          break;
        case 'Division':
          if (num2 != 0) {
            result = num1 / num2;
          } else {
            result = 0; // Handle division by zero
          }
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio<String>(
                  value: 'Add',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Add'),
                Radio<String>(
                  value: 'Subtraction',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Subtraction'),
              ],
            ),
            Row(
              children: [
                Radio<String>(
                  value: 'Multiply',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Multiply'),
                Radio<String>(
                  value: 'Division',
                  groupValue: operation,
                  onChanged: (value) {
                    setState(() {
                      operation = value!;
                    });
                  },
                ),
                Text('Division'),
              ],
            ),
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 1'),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter number 2'),
            ),
            SizedBox(height: 20),
            
            // RaisedButton(
            //   onPressed: calculate,
            //   child: Text('Calculate'),
            // ),

            ElevatedButton(onPressed: calculate, child: Text("Calculate")),
            SizedBox(height: 20),
            Text(
              'Result: $result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
