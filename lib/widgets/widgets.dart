import 'package:device_monitor/Themes/themes.dart';
import 'package:flutter/material.dart';

Widget textField(context, String hint, TextInputType type, bool isPassword) {
  return Padding(
    padding: edgeOnly(30, 30, 10, 10),
    child: Container(
      height: 50,
      width: widthBy(1.3, context),
      margin: EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: Colors.blueGrey[900],
        borderRadius: borderCirculer(40),
      ),
      child: TextField(
        keyboardType: type,
        maxLines: 1,
        minLines: 1,
        textAlign: textCenter,
        obscureText: isPassword,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hint,
            hintStyle: TextStyle(color: Colors.teal[300])),
      ),
    ),
  );
}
