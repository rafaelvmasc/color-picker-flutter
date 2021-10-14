import 'package:brincadeirasleves/component/color_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ColorPickerApp());
}

class ColorPickerApp extends StatefulWidget {
  @override
  State<ColorPickerApp> createState() => _ContadorAppState();
}

class _ContadorAppState extends State<ColorPickerApp> {
  int contador = 0;
  MaterialColor _currentcolor = Colors.green;
  String _cor = 'Green';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: _currentcolor),
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(title: const Text('Color picker')),
        body: Column(children: [
          Padding(
              padding: const EdgeInsets.only(
                top: 50.0,
                bottom: 50.0,
              ),
              child: Text(
                'Current Color: ' + _cor,
                style: const TextStyle(color: Colors.white, fontSize: 24.0),
              )),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                InkWell(
                  child: ColorButton(Colors.red, 'Red'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.red;
                      _cor = 'Red';
                    });
                  },
                ),
                InkWell(
                  child: ColorButton(Colors.blue, 'Blue'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.blue;
                      _cor = 'Blue';
                    });
                  },
                ),
                InkWell(
                  child: ColorButton(Colors.pink, 'Pink'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.pink;
                      _cor = 'Pink';
                    });
                  },
                ),
                InkWell(
                  child: ColorButton(Colors.orange, 'Orange'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.orange;
                      _cor = 'Orange';
                    });
                  },
                ),
                InkWell(
                  child: ColorButton(Colors.yellow, 'Yellow'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.yellow;
                      _cor = 'Yellow';
                    });
                  },
                ),
                InkWell(
                  child: ColorButton(Colors.green, 'Green'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.green;
                      _cor = 'Green';
                    });
                  },
                )
              ])),
        ]),
      ),
    );
  }
}
