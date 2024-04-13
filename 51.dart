
import 'package:burger_app/51_2.dart';
import 'package:flutter/material.dart';



import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Number Range App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputNumbersScreen(),
        '/result': (context) => ResultScreen(),
      },
    );
  }
}

class InputNumbersScreen extends StatelessWidget {
  final TextEditingController number1Controller = TextEditingController();
  final TextEditingController number2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Input Numbers'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: number1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter first number'),
            ),
            TextField(
              controller: number2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Enter second number'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                int number1 = int.tryParse(number1Controller.text) ?? 0;
                int number2 = int.tryParse(number2Controller.text) ?? 0;
                if (number1 != null && number2 != null) {
                  Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: [number1, number2],
                  );
                }
              },
              child: Text('Show Numbers'),
            ),
          ],
        ),
      ),
    );
  }
}