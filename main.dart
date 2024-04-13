import 'package:flutter/material.dart';
import 'package:module3/49_1.dart';
import 'package:module3/49_2.dart';
import 'package:module3/53.dart';
import 'package:module3/54.dart';
import 'package:module3/59_1.dart';
import 'package:module3/60_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scree01(),
    );
  }
}

