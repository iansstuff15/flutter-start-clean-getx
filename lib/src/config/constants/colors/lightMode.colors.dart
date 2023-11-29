import 'package:clean_architecture_getx_starter/src/config/constants/colors/luminance.colors.dart';
import 'package:flutter/material.dart';

class LightModeColors {
  static Color primary = Color.fromRGBO(39, 2, 97, 1);
  static MaterialStateProperty<Color> primaryButtonColor =
      MaterialStateProperty.all(primary);
  static Color primaryButtonTextColor = Colors.white;
  static MaterialColor primaryMaterial = MaterialColor(0xFF600AEB, luminance);
  static MaterialStateProperty<Color> primaryMaterialState =
      MaterialStateProperty.all(primary);
  static Color splashBackgroundColor = Color.fromARGB(255, 0, 17, 53);
  static Color splashForegroundColor = Color(0xFFFFFFFF);
  static Color scaffoldBackground = Color(0xFFFFFFFF);
  static Color textColor = Color(0xFF202020);
  static Color textBox = Color.fromARGB(255, 228, 228, 228);
  static Color container = Color(0xDDF1F1F1);
  static Color elevatedContainer = Color.fromRGBO(243, 142, 54, 1);
  static Color secondary = Color(0xFFEBC20A);
  static Color textErrorColor = Colors.red;
}
