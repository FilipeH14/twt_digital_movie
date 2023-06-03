import 'package:flutter/material.dart';
import 'package:twt_digital_movie/app/shared/ui/styles/twt_colors.dart';
import 'package:twt_digital_movie/app/shared/ui/styles/twt_fonts.dart';

class TwtTheme {
  TwtTheme._();

  static final theme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    primaryColor: TwtColors.instance.primary,
    colorScheme: ColorScheme.fromSeed(
      seedColor: TwtColors.instance.primary,
      primary: TwtColors.instance.primary,
      secondary: TwtColors.instance.secondary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: Colors.white,
      filled: true,
      isDense: true,
      contentPadding: const EdgeInsets.all(13),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(7),
        borderSide: BorderSide(color: Colors.grey[400]!),
      ),
      labelStyle: TwtFonts.instance.textRegular.copyWith(color: Colors.black),
      errorStyle:
          TwtFonts.instance.textRegular.copyWith(color: Colors.redAccent),
    ),
  );
}
