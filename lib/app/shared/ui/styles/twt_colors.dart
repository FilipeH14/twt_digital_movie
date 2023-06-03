import 'package:flutter/material.dart';

class TwtColors {
  static TwtColors? _instance;

  TwtColors._();

  static TwtColors get instance {
    _instance ??= TwtColors._();
    return _instance!;
  }

  Color get primary => const Color(0XFF007D21);
  Color get secondary => const Color(0XFFF88B0C);
}

extension TwtColorsExtensions on BuildContext {
  TwtColors get colors => TwtColors.instance;
}
