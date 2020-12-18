import 'package:device_monitor/Themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as g;

import 'Pages/Authentication/signin.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    g.GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: themeData,
      popGesture: true,
      title: 'Devices Monitor',
      home: SigninPage(), //MyHomePage(title: 'Devices Monitor'),
    ),
  );
}
