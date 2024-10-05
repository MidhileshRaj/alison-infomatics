import 'package:flutter/material.dart';

import 'custom_theme/appbar_theme.dart';
import 'custom_theme/bottom_sheet_theme.dart';
import 'custom_theme/text_field_theme.dart';
import 'custom_theme/text_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MyAppAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: MyAppBottomBarTheme.lightBottomSheetTheme,
    inputDecorationTheme: MyAppTextFieldTheme.lightInputDecorationTheme,
    textTheme: MyAppTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: MyAppAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: MyAppBottomBarTheme.darkBottomSheetTheme,
    inputDecorationTheme: MyAppTextFieldTheme.darkInputDecorationTheme,
    textTheme: MyAppTextTheme.darkTextTheme,
  );
}
