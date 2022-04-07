import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Theme data for the entire project
var appTheme = ThemeData(
  fontFamily: GoogleFonts.nunito().fontFamily,
  brightness: Brightness.dark,
  textTheme: const TextTheme(
    bodyText1: TextStyle(fontSize: 18),
    bodyText2: TextStyle(fontSize: 16),
    button: TextStyle(
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
    ),
    headline1: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(
      color: Colors.grey,
    ),
  ),
  buttonTheme: const ButtonThemeData(),
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.black87,
  ),
);
