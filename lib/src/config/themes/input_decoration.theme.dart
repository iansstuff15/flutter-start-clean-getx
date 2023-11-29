import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
  fillColor: AppColors.textBox,
  filled: true,
  border: InputBorder.none,
  labelStyle: GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.black,
      fontSize: 14,
    ),
  ),
  hintStyle: GoogleFonts.poppins(
    textStyle: TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w200,
      fontSize: 12,
    ),
  ),
);
