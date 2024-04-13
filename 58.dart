import 'package:flutter/material.dart';



class BackgroundColorChanger extends StatefulWidget {
  @override
  _BackgroundColorChangerState createState() => _BackgroundColorChangerState();
}

class _BackgroundColorChangerState extends State<BackgroundColorChanger> {
  double _redValue = 0;
  double _greenValue = 0;
  double _blueValue = 0;

  void _updateBackgroundColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Background Color Changer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Slider(
              value: _redValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _redValue = value;
                });
                _updateBackgroundColor();
              },
            ),
            Slider(
              value: _greenValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _greenValue = value;
                });
                _updateBackgroundColor();
              },
            ),
            Slider(
              value: _blueValue,
              min: 0,
              max: 255,
              onChanged: (value) {
                setState(() {
                  _blueValue = value;
                });
                _updateBackgroundColor();
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, _redValue.toInt(), _greenValue.toInt(), _blueValue.toInt()),
    );
  }
}
