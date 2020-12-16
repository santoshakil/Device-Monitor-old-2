import 'package:device_monitor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;

import './Pages/Home/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    g.GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: themeData,
      popGesture: true,
      title: 'Devices Monitor',
      home: MyHomePage(title: 'Devices Monitor'),
    ),
  );
}
