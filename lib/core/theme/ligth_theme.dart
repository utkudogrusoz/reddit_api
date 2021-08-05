import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:reddit_api/core/constants/ui/color_constant.dart';


import 'ITheme.dart';

class LightTheme extends ITheme {
  static LightTheme instance = LightTheme._init();

  LightTheme._init();

  final ThemeData _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold, color: ColorConstant.instance.lightPrimaryColor),
          headline2: TextStyle(fontSize: 16.0, fontStyle: FontStyle.italic,color: ColorConstant.instance.lightAccentColor),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: ColorConstant.instance.lightBlackColor),
          backgroundColor: Colors.transparent,
        ),
        colorScheme: _lightTheme.colorScheme.copyWith(
          primary: ColorConstant.instance.lightPrimaryColor,
          secondary: ColorConstant.instance.lightSecondaryColor,
          brightness: Brightness.light,
          background: ColorConstant.instance.lightBackgroundColor,
        ),
        accentColor: ColorConstant.instance.lightAccentColor,
        accentIconTheme: IconThemeData(color: ColorConstant.instance.lightAccentIconColor),
      );
}
