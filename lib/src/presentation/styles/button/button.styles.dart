import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:flutter/material.dart';

class ButtonStyles {
  static ButtonStyle generic = ButtonStyle(
      backgroundColor: AppColors.primaryMaterialState,
      textStyle: MaterialStatePropertyAll(TextStyle(color: Colors.white)));
}
