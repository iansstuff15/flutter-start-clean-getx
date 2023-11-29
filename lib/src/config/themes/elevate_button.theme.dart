import 'package:clean_architecture_getx_starter/src/config/constants/borderRadius.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
    style: ButtonStyle(
  foregroundColor: MaterialStateProperty.all(AppColors.textColor),
  textStyle:
      MaterialStateProperty.all(TextStyle(fontWeight: AppFontWeight.bold)),
  shape:
      MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: appBorderRadius,
  )),
));
