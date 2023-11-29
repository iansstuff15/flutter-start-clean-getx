import 'package:clean_architecture_getx_starter/src/config/routes/appRoutes.config.dart';
import 'package:clean_architecture_getx_starter/src/data/enum/routes/routes.enum.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/login/login.screen.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/permissions/permissions.screens.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/register/register.screen.dart';
import 'package:clean_architecture_getx_starter/src/presentation/screens/splash/splash.dart';
import 'package:get/route_manager.dart';

appRouter() => [
      GetPage(
        name: RouteIds[Routes.LOGIN],
        page: () => LoginScreen(),
        transition: Transition.circularReveal,
        transitionDuration: Duration(milliseconds: 600),
      ),
      GetPage(
        name: RouteIds[Routes.SPLASH],
        page: () => SplashScreen(),
        transition: Transition.noTransition,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: RouteIds[Routes.REGISTER],
        page: () => RegisterScreen(),
        transition: Transition.native,
        transitionDuration: Duration(milliseconds: 300),
      ),
      GetPage(
        name: RouteIds[Routes.PERMISSIONS],
        page: () => PermissionScreen(),
        transition: Transition.native,
        transitionDuration: Duration(milliseconds: 300),
      ),
    ];
