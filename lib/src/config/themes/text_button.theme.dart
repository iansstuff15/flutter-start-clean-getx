import 'package:clean_architecture_getx_starter/src/config/constants/borderRadius.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

TextButtonThemeData textButtonThemeData = TextButtonThemeData(
    style: ButtonStyle(
  textStyle: MaterialStateProperty.all(
      TextStyle(fontWeight: FontWeight.bold, color: AppColors.textColor)),
  shape:
      MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
    borderRadius: appBorderRadius,
  )),
));
