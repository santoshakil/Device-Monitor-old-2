import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeData = ThemeData(
  appBarTheme: appBarTheme,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black87,
    primary: Colors.black87,
  ),
  scaffoldBackgroundColor: Colors.black87,
  visualDensity: VisualDensity.comfortable,
  fontFamily: GoogleFonts.quicksand(
    fontWeight: FontWeight.w600,
  ).fontFamily,
);

AppBarTheme appBarTheme = AppBarTheme(
  elevation: 0,
  brightness: Brightness.dark,
  centerTitle: true,
  color: Colors.black87,
);
