import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

class textStyles {
  static TextStyle headerStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppSizes.medium,
      color: AppColors.primary);
  static TextStyle appBarTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: AppSizes.mediumSmall,
      color: AppColors.primary);
}
