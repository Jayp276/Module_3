import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<int> args =
        ModalRoute.of(context)!.settings.arguments as List<int>;
    int number1 = args[0];
    int number2 = args[1];

    List<int> numbers = [];
    if (number1 <= number2) {
      for (int i = number1; i <= number2; i++) {
        numbers.add(i);
      }
    } else {
      for (int i = number2; i <= number1; i++) {
        numbers.add(i);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Numbers Between'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('${numbers[index]}'),
            );
          },
        ),
      ),
    );
  }
}
