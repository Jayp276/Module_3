import 'package:flutter/material.dart';



class ReverseNumberApp extends StatefulWidget {
  @override
  _ReverseNumberAppState createState() => _ReverseNumberAppState();
}

class _ReverseNumberAppState extends State<ReverseNumberApp> {
  TextEditingController _numberController = TextEditingController();
  String _reverseNumber = '';

  void _calculateReverse() {
    String inputNumber = _numberController.text;
    if (inputNumber.isNotEmpty) {
      int number = int.tryParse(inputNumber) ?? 0;
      int reverse = 0;
      while (number != 0) {
        int digit = number % 10;
        reverse = reverse * 10 + digit;
        number = number ~/ 10;
      }
      setState(() {
        _reverseNumber = reverse.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reverse Number'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _numberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter a number',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateReverse,
              child: Text('Calculate Reverse'),
            ),
            SizedBox(height: 20),
            Text(
              'Reverse Number: $_reverseNumber',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
