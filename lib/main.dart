import 'package:brincadeirasleves/component/color_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ContadorApp());
}

class ContadorApp extends StatefulWidget {
  @override
  State<ContadorApp> createState() => _ContadorAppState();
}

class _ContadorAppState extends State<ContadorApp> {
  int contador = 0;
  MaterialColor _currentcolor = Colors.green;
  String _cor = 'teste';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: _currentcolor),
      home: Scaffold(
        backgroundColor: Colors.white10,
        appBar: AppBar(title: Text('Color picker')),
        body: Column(children: [
          Padding(
              padding: EdgeInsets.only(
                top: 50.0,
                bottom: 50.0,
              ),
              child: Text(
                'Current Color: ' + _cor,
                style: TextStyle(color: Colors.white, fontSize: 24.0),
              )),
          Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                GestureDetector(
                  child: ColorButton(Colors.green, 'Green'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.green;
                      _cor = 'Green';
                    });
                  },
                ),
                GestureDetector(
                  child: ColorButton(Colors.red, 'Red'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.red;
                      _cor = 'Red';
                    });
                  },
                ),
                GestureDetector(
                  child: ColorButton(Colors.blue, 'Blue'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.blue;
                      _cor = 'Blue';
                    });
                  },
                ),
                GestureDetector(
                  child: ColorButton(Colors.pink, 'Pink'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.pink;
                      _cor = 'Pink';
                    });
                  },
                ),
                GestureDetector(
                  child: ColorButton(Colors.orange, 'Orange'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.orange;
                      _cor = 'Orange';
                    });
                  },
                ),
                GestureDetector(
                  child: ColorButton(Colors.yellow, 'Yellow'),
                  onTap: () {
                    setState(() {
                      _currentcolor = Colors.yellow;
                      _cor = 'Yellow';
                    });
                  },
                ),
              ])),
        ]),
      ),
    );
  }
}
