import "package:flutter/material.dart";

class btn_statefull_example extends StatefulWidget {
  const btn_statefull_example({super.key});

  @override
  State<btn_statefull_example> createState() => _btn_statefull_exampleState();
}

class _btn_statefull_exampleState extends State<btn_statefull_example> {
  Color mybg = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: mainbg1,
      backgroundColor: mybg,

      appBar: AppBar(
        title: Text("Change Background Color"),
      ),
      body: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mybg = Colors.red;
                  });
                },
                child: Text("Red")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mybg = Colors.green;
                  });
                },
                child: Text("Green")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    mybg = Colors.blue;
                  });
                },
                child: Text("Blue"))
          ],
        ),
      ),
    );
  }
}
