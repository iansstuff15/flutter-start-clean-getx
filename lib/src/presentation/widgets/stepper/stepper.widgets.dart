import 'dart:ffi';

import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:flutter/material.dart';

class AppStepper extends StatefulWidget {
  int? currentStep;
  int? maxSteps;
  String? currentStepTitle;
  String? currentStepDescription;
  AppStepper(
      {required this.currentStep,
      required this.maxSteps,
      required this.currentStepTitle,
      required this.currentStepDescription});
  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: AppSizes.mediumSmall),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Step ${widget.currentStep} of ${widget.maxSteps}"),
            Text(
              "${widget.currentStepTitle}",
              style: TextStyle(
                  fontWeight: AppFontWeight.bold,
                  fontSize: AppSizes.mediumSmall),
            ),
            SizedBox(
              height: AppSizes.tweenSmall,
            ),
            Text("${widget.currentStepDescription}"),
            SizedBox(
              height: AppSizes.small,
            ),
            LinearProgressIndicator(
              value: widget.currentStep! / widget.maxSteps!,
            )
          ],
        ));
  }
}
