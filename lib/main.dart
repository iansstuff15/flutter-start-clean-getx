import 'package:clean_architecture_getx_starter/src/appRoutes.dart';
import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/config/themes/theme.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Getx Clean',
      theme: AppTheme.main,
      getPages: appRouter(),
      initialRoute: RouteIds[Routes.SPLASH],
    );
  }
}
