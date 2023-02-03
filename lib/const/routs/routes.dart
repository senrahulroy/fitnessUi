import 'package:flutter/material.dart';
import 'package:ui_app_fitness/const/routs/routesname.dart';
import 'package:ui_app_fitness/pages/screen/sign_signout/login_screen.dart';
import 'package:ui_app_fitness/pages/screen/sign_signout/signup_screen.dart';
import 'package:ui_app_fitness/pages/screen/splas_screen.dart';
import 'package:ui_app_fitness/pages/screen/welcome_screen1.dart';
import 'package:ui_app_fitness/pages/screen/welcome_screen2.dart';
import 'package:ui_app_fitness/pages/screen/welcome_screen3.dart';
import 'package:ui_app_fitness/pages/screen/welcome_screen4.dart';

class AppRoutes {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RoutsName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplasScreen());

      case RoutsName.welcome1:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen());

      case RoutsName.welcome2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen2());

      case RoutsName.welcome3:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen3());

      case RoutsName.welcome4:
        return MaterialPageRoute(
            builder: (BuildContext context) => const WelcomeScreen4());

      case RoutsName.signup:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SignInScreen());

      case RoutsName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen());

      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No routes available'),
                  ),
                ));
    }
  }
}
