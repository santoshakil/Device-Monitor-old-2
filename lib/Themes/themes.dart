import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

MainAxisSize mainAxisMax = MainAxisSize.max;
MainAxisSize mainAxisMin = MainAxisSize.min;
MainAxisAlignment mainAlignStart = MainAxisAlignment.start;
MainAxisAlignment mainAlignCenter = MainAxisAlignment.center;

CrossAxisAlignment crossAlignStart = CrossAxisAlignment.start;
CrossAxisAlignment crossAlignCenter = CrossAxisAlignment.center;

TextAlign textCenter = TextAlign.center;
TextAlign textStart = TextAlign.start;

ThemeData themeData = ThemeData(
  appBarTheme: appBarTheme,
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black87,
    primary: Colors.black87,
  ),
  cardTheme: CardTheme(
    color: Colors.grey[850],
    elevation: 10,
  ),
  scaffoldBackgroundColor: Colors.black87,
  visualDensity: VisualDensity.comfortable,
  fontFamily: GoogleFonts.quicksand(
    fontWeight: FontWeight.w600,
  ).fontFamily,
);

AppBarTheme appBarTheme = AppBarTheme(
  elevation: 3,
  brightness: Brightness.dark,
  centerTitle: true,
  color: Colors.black87,
);

BorderRadius borderCirculer(double radius) {
  return BorderRadius.all(Radius.circular(radius));
}

EdgeInsetsGeometry edgeAll(double value) {
  return EdgeInsets.all(value);
}

EdgeInsetsGeometry edgeOnly(
    double left, double right, double top, double bottom) {
  return EdgeInsets.only(left: left, right: right, top: top, bottom: bottom);
}

double height(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double heightBy(double x, BuildContext context) {
  return MediaQuery.of(context).size.height / x;
}

double width(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double widthBy(double x, BuildContext context) {
  return MediaQuery.of(context).size.width / x;
}
