import "package:flutter/material.dart";

class FontIncreaseExample extends StatefulWidget {
  const FontIncreaseExample({super.key});

  @override
  State<FontIncreaseExample> createState() => _FontIncreaseExampleState();
}

class _FontIncreaseExampleState extends State<FontIncreaseExample> {
  double fontSize = 20;

  void IncreaseFontSize() {
    setState(() {
      fontSize += 2;
    });
  }

  void DecreaseFontSize() {
    setState(() {
      fontSize -= 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "hello",
                style: TextStyle(fontSize: fontSize, color: Colors.brown),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    IncreaseFontSize();
                  });
                },
                child: Icon(Icons.add)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    DecreaseFontSize();
                  });
                },
                child: Icon(Icons.remove)),

            //Text("jay" , style: TextStyle(fontSize: fontSize),)
          ],
        ),
      ),
    );
  }
}
