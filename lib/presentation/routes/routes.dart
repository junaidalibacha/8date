import 'package:eight_date_app/presentation/views/phone_verification/phone_verification.dart';
import 'package:eight_date_app/presentation/views/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';

import '../src/index.dart';
import '../views/register/register.dart';
import '../views/splash/splash.dart';

class Routes {
  static const String splashRoute = '/';
  static const String mainRoute = '/mainRoute';
  static const String registerRoute = '/register';
  static const String phoneVerificationRoute = '/phoneVerification';
  static const String signUpRoute = '/signUp';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.phoneVerificationRoute:
        return MaterialPageRoute(builder: (_) => const PhoneVarificationView());
      case Routes.signUpRoute:
        return MaterialPageRoute(builder: (_) => const SignUpView());
    }
    return _unDefinedRoute();
  }

  static Route<dynamic> _unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(StringManager.undefinedRoute),
        ),
        body: const Center(
          child: Text(StringManager.noRouteFound),
        ),
      ),
    );
  }
}
