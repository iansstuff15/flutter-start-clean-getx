import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/button/button.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/login/login.screen.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/button/appButton.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/input/appTextFormField.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/stepper/stepper.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterForm extends StatefulWidget {
  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        AppStepper(
          currentStep: 1,
          maxSteps: 2,
          currentStepTitle: "User Credentials",
          currentStepDescription:
              "This information will be used to login to your account",
        ),
        AppTextFormField(
            keyboardType: TextInputType.emailAddress, labelText: "Email"),
        AppTextFormField(
          keyboardType: TextInputType.visiblePassword,
          labelText: "Password",
          obsureText: true,
        ),
        SizedBox(
          height: AppSizes.extraSmall,
        ),
        Center(
          child: Text("Don't have an account yet?"),
        ),
        AppButton(
          buttonText: "Next",
          onPress: () {},
          block: true,
          buttonType: ButtonTypes.PRIMARY,
        ),
        AppButton(
          buttonText: "Previous",
          onPress: () {},
          block: true,
          buttonType: ButtonTypes.OUTLINE,
        ),
      ],
    ));
  }
}
