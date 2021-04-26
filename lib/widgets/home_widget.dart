import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Container(
          color: const Color(0xffeeee00),
          height: 900.0,
          alignment: Alignment.center,
          child: const Text('Fixed Height Content'),
        ),
        Container(
          color: const Color(0xff008000),
          height: 900.0,
          alignment: Alignment.center,
          child: const Text('Fixed Height Content'),
        ),
      ],
    );
  }
}
