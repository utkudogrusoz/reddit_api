import 'dart:ui';

class ColorConstant {
  static ColorConstant instance = ColorConstant._init();

  ColorConstant._init();

  // LIGHT THEME COLORS
  final lightPrimaryColor = Color.fromRGBO(64, 59, 89, 1.0);
  final lightSecondaryColor = Color.fromRGBO(250, 84, 58, 1.0);
  final lightBackgroundColor = Color.fromRGBO(245, 245, 245, 1.0);
  final lightAccentColor = Color.fromRGBO(172, 170, 180, 1.0);
  final lightAccentIconColor = Color(0xFFfbb474);
  final lightBlackColor = Color(0xff000000);
  final lightWhiteColor = Color(0xffffffff);

  // DARK THEME COLORS
  /*final darkPrimaryColor = Color(0xFFc76206);
  final darkSecondaryColor = Color(0xFFd28137);
  final darkBackgroundColor = Color(0xFF160F2B);
  final darkAccentColor = Color(0xff162324);
  final darkAccentIconColor = Color(0xFFECBF44);*/
}
