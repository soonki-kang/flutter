import 'package:alltest/views/intro_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'globals/theme/base_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: baseTheme,
      darkTheme: ThemeData(
          brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      // color: Colors.black,
      home: IntroView(),

    );
  }
}
