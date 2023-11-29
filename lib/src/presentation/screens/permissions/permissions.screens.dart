import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/button/button.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/button/appButton.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/scaffold/appScaffold.widget.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/stepper/stepper.widgets.dart';
import 'package:clean_architecture_getx_starter/src/utils/appInfo.dart';
import 'package:flutter/material.dart';

class PermissionScreen extends StatefulWidget {
  static String id = RouteIds[Routes.PERMISSIONS];

  @override
  State<PermissionScreen> createState() => _PermissionScreenState();
}

class _PermissionScreenState extends State<PermissionScreen> {
  String? appName;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      bottomNavigationBar: Padding(
          padding: EdgeInsets.all(AppSizes.mediumSmall),
          child: AppButton(
            onPress: () {},
            buttonType: ButtonTypes.PRIMARY,
            buttonText: "Continue",
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to ${appName ?? ""}",
            style: TextStyle(
              fontSize: AppSizes.small,
              fontWeight: AppFontWeight.semibold,
            ),
          ),
          Text(
            "Following permissions needed to use app features",
            style: TextStyle(
                fontSize: AppSizes.mediumSmall,
                fontWeight: AppFontWeight.bold,
                color: AppColors.primary),
          ),
          SizedBox(
            height: AppSizes.small,
          ),
          AppStepper(
              currentStep: 1,
              maxSteps: 5,
              currentStepTitle: "Camera",
              currentStepDescription: "Will be used to take pictures")
        ],
      ),
    );
  }
}
