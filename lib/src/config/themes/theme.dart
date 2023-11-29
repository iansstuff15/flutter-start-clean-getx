import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/themes/input_decoration.theme.dart';
import 'package:clean_architecture_getx_starter/src/config/themes/outlined_button.theme.dart';
import 'package:clean_architecture_getx_starter/src/config/themes/text.theme.dart';
import 'package:clean_architecture_getx_starter/src/config/themes/text_button.theme.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'elevate_button.theme.dart';

class AppTheme {
  static ThemeData main = ThemeData(
    primarySwatch: AppColors.primaryMaterial,
    textTheme: textTheme,
    elevatedButtonTheme: elevatedButtonThemeData,
    outlinedButtonTheme: outlinedButtonThemeData,
    textButtonTheme: textButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,
  );
}
