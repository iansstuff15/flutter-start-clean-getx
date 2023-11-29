import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/button/button.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/button/appButton.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/input/appTextFormField.widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
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
          buttonText: "Register",
          onPress: () {
            Get.toNamed(RouteIds[Routes.REGISTER]);
          },
          block: true,
          buttonType: ButtonTypes.TEXT,
        ),
      ],
    ));
  }
}
