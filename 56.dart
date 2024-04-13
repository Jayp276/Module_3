import 'package:flutter/material.dart';

class FourImage extends StatefulWidget {
  const FourImage({super.key});

  @override
  State<FourImage> createState() => _FourImageState();
}

class _FourImageState extends State<FourImage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/mountain1.jpg",
                width: 200,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/pizza.png",
                height: 200,
                width: 150,
              ),
              Text(
                "Jay",
                style: TextStyle(fontSize: 30),
              ),
              Image.asset(
                "assets/images/pizza.png",
                height: 200,
                width: 150,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/mountain1.jpg",
                width: 200,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
