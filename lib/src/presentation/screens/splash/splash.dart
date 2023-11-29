import 'package:clean_architecture_getx_starter/src/config/constants/colors/colors.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/font_weights.config.dart';
import 'package:clean_architecture_getx_starter/src/config/constants/sizes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/login/login.screen.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/permissions/permissions.screens.dart';
import 'package:clean_architecture_getx_starter/src/presentation/widgets/scaffold/appScaffold.widget.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  static String id = RouteIds[Routes.SPLASH];

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Get.toNamed(LoginScreen.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          PackageInfo packageInfo = snapshot.data ??
              PackageInfo(
                  appName: "appName",
                  packageName: "packageName",
                  version: "version",
                  buildNumber: "buildNumber");
          String appName = packageInfo.appName;
          String packageName = packageInfo.packageName;
          String version = packageInfo.version;
          String buildNumber = packageInfo.buildNumber;

          return AppScaffold(
            backgroundColor: AppColors.splashBackgroundColor,
            child: Container(
              height: AppSizes.getHeight(context) * 0.85,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(),
                  Column(
                    children: [
                      SvgPicture.asset(
                        "assets/appIcon.svg",
                        width: AppSizes.large,
                        height: AppSizes.extraLarge,
                      ),
                      Text(appName,
                          style: TextStyle(
                              fontWeight: AppFontWeight.bold,
                              color: AppColors.splashForegroundColor)),
                      SizedBox(
                        height: AppSizes.small,
                      ),
                      CircularProgressIndicator(),
                    ],
                  ),
                  Text(
                    "$packageName v$buildNumber $version",
                    style: TextStyle(
                        fontSize: AppSizes.extraSmall,
                        color: AppColors.splashForegroundColor),
                  ),
                ],
              ),
            ),
          );
        } else {
          return CircularProgressIndicator(); // Display a loading indicator while fetching package info.
        }
      },
    );
  }
}
