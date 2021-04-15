import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

TextStyle latamSansThinItalic(double size, Color color) {
  return TextStyle(
      color: color,
      fontFamily: "Latam Sans",
      fontSize: size,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.w200);
}

TextStyle latamSansThin(double size, Color color) {
  return TextStyle(
      color: color,
      fontFamily: "Latam Sans",
      fontSize: size,
      fontWeight: FontWeight.w200);
}

TextStyle latamSansRegular(double size, Color color) {
  return TextStyle(
    color: color,
    fontFamily: "Latam Sans",
    fontSize: size,
    fontWeight: FontWeight.w500,
  );
}

TextStyle latamSansRegularItalic(double size, Color color) {
  return TextStyle(
    color: color,
    fontFamily: "Latam Sans",
    fontSize: size,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.w500,
  );
}
