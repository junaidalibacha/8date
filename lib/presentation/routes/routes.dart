import 'package:eight_date_app/presentation/views/phone_verification/phone_verification.dart';
import 'package:flutter/material.dart';

import '../src/index.dart';
import '../views/register/register.dart';
import '../views/splash/splash.dart';

class Routes {
  static const String splashRoute = '/';
  static const String mainRoute = '/mainRoute';
  static const String registerRoute = '/register';
  static const String phoneVerificationRoute = '/phoneVerification';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.phoneVerificationRoute:
        return MaterialPageRoute(builder: (_) => const PhoneVarification());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
    }
    return _undefinedRoute();
  }

  static Route<dynamic> _undefinedRoute() {
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
