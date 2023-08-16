import 'package:flutter/material.dart';

// 새 테마 정의
final ThemeData baseTheme = _baseTheme();

ThemeData _baseTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: const Color.fromARGB(255, 255, 153, 51),
      onPrimary: Colors.white,
      secondary: const Color.fromARGB(255, 223, 27, 12),
      onSecondary: Colors.white,
      background: const Color.fromARGB(255, 228, 243, 228),
      onBackground: Colors.black,
    ),
    textTheme: _baseTextTheme(base.textTheme),
    elevatedButtonTheme: _elevatedButtonThemeData(base.elevatedButtonTheme),
    inputDecorationTheme: _inputDecorationTheme(base.inputDecorationTheme),
  );
}

TextTheme _baseTextTheme(TextTheme base) => base.copyWith(
      headline1: base.headline1!.copyWith(
        fontFamily: 'Proxima Nova Rg Regular',
        fontSize: 30,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
      headline2: base.headline2!.copyWith(
        fontFamily: 'Proxima Nova Rg Regular',
        fontSize: 26,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      headline3: base.headline3!.copyWith(
        fontFamily: 'Proxima Nova Rg Regular',
        fontSize: 24,
        fontWeight: FontWeight.w400,
        color: Colors.black,
      ),
      bodyText1: base.bodyText1!.copyWith(
        fontFamily: 'Proxima Nova Rg Regular',
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),
      bodyText2: base.bodyText2!.copyWith(
        fontFamily: 'Proxima Nova Rg Regular',
        fontSize: 18,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );

ElevatedButtonThemeData _elevatedButtonThemeData(
        ElevatedButtonThemeData base) =>
    ElevatedButtonThemeData(
      style: ButtonStyle(
        // backgroundColor: LinearGradient(colors: [Colors.red, Colors.yellow,Colors.blue]),
        backgroundColor: MaterialStateProperty.all<Color>(
          Color.fromARGB(255, 223, 27, 12),
        ),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
    );

InputDecorationTheme _inputDecorationTheme(InputDecorationTheme base) =>
    const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.0,
          color: Colors.black,
          style: BorderStyle.solid,
        ),
      ),
    );
