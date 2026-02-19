import 'package:flutter/material.dart';

class TextStyles {
  static const String fontFamily = "Mulish";

  static final TextStyle headline = TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w900 ,
    fontFamily: fontFamily,
  );
  static final TextStyle subtitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700 ,
    fontFamily: fontFamily,
  );

  static const TextStyle body = TextStyle(
    fontSize: 16,
    fontFamily: fontFamily,
  );
}
