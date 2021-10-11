import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final Color cor;
  final String nomecor;

  ColorButton(this.cor, this.nomecor);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          color: cor,
          height: 50,
          width: 300,
          child: Center(
              child: Text(
            nomecor,
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
                decoration: TextDecoration.underline),
          )),
        ));
  }
}
