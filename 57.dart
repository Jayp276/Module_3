import 'package:flutter/material.dart';



class ColorSelector extends StatefulWidget {
  @override
  _ColorSelectorState createState() => _ColorSelectorState();
}

class _ColorSelectorState extends State<ColorSelector> {
  Color _selectedColor = Colors.red;

  void _setColor(Color? color) {
    if (color != null) {
      setState(() {
        _selectedColor = color;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color Selector'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RadioListTile<Color>(
              title: Text('Red'),
              value: Colors.red,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile<Color>(
              title: Text('Green'),
              value: Colors.green,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            RadioListTile<Color>(
              title: Text('Blue'),
              value: Colors.blue,
              groupValue: _selectedColor,
              onChanged: _setColor,
            ),
            SizedBox(height: 20),
            Container(
              width: 200,
              height: 200,
              color: _selectedColor,
            ),
          ],
        ),
      ),
    );
  }
}
