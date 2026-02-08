import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle genericText(
    String fontFamily,
    double size,
    FontWeight fontWeight,
    Color color, {
    Orientation? orientation = Orientation.portrait,
    decoration = TextDecoration.none,
  }) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: orientation == Orientation.portrait ? size : size * 0.9,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
    );
  }

  static TextStyle skip(
    String fontFamily,
    double size,
    FontWeight fontWeight,
    Color color,
    TextDecoration decoration,
  ) {
    return TextStyle(
      fontFamily: fontFamily,
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
      decoration: decoration,
      decorationColor: Colors.white,
    );
  }
}
