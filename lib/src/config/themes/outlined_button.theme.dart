import 'package:clean_architecture_getx_starter/src/config/constants/borderRadius.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

OutlinedButtonThemeData outlinedButtonThemeData = OutlinedButtonThemeData(
    style: ButtonStyle(
  foregroundColor: AppColors.primaryMaterialState,
  textStyle: MaterialStateProperty.all(TextStyle(fontWeight: FontWeight.bold)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: appBorderRadius,
          side: BorderSide(
              color: AppColors.primaryMaterial, width: AppSizes.small))),
));
