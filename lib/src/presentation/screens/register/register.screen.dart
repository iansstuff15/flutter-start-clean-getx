import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/button/button.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/login/login.screen.dart';
import 'package:clean_architecture_getx_starter/src/presentation/styles/text/text.styles.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/button/appButton.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/form/register/register.form.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/input/appTextFormField.widgets.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/scaffold/appScaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ionicons/ionicons.dart';

class RegisterScreen extends StatelessWidget {
  static String id = RouteIds[Routes.LOGIN];
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: "Register",
      showAppBar: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RegisterForm(),
          SizedBox(
            height: AppSizes.extraSmall,
          ),
          Center(
            child: Text("Already have an account?"),
          ),
          AppButton(
            buttonText: "Login",
            onPress: () {
              Get.to(LoginScreen(), transition: Transition.native);
            },
            block: true,
            buttonType: ButtonTypes.TEXT,
          ),
          Center(
            child: Text("or login with"),
          ),
          AppButton(
            buttonText: "Google",
            onPress: () {},
            block: true,
            buttonType: ButtonTypes.ELEVATED,
            icon: Ionicons.logo_google,
            iconColor: Colors.black,
          ),
          AppButton(
            buttonText: "Apple",
            onPress: () {},
            block: true,
            buttonType: ButtonTypes.ELEVATED,
            backgroundColor: MaterialStatePropertyAll(Colors.black),
            foregroundColor: Colors.white,
            icon: Icons.apple,
          ),
          AppButton(
            buttonText: "Facebook",
            onPress: () {},
            block: true,
            buttonType: ButtonTypes.ELEVATED,
            backgroundColor:
                MaterialStatePropertyAll(Color.fromARGB(255, 9, 50, 164)),
            foregroundColor: Colors.white,
            icon: Icons.facebook,
          ),
        ],
      ),
    );
  }
}
