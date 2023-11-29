import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/presentation/styles/text/text.styles.dart';
import 'package:flutter/material.dart';

PreferredSize DefaultAppBar = PreferredSize(
  child: SafeArea(
      child: Container(
          child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Login",
        style: textStyles.appBarTextStyle,
      ),
    ],
  ))),
  preferredSize: Size.fromHeight(AppSizes.large),
);
