import 'package:eight_date_app/presentation/views/phone_verification/phone_verification.dart';
import 'package:eight_date_app/presentation/views/profile/add_bio_view.dart';
import 'package:eight_date_app/presentation/views/profile/add_insta_name.dart';
import 'package:eight_date_app/presentation/views/profile/add_interest_view.dart';
import 'package:eight_date_app/presentation/views/profile/add_profile_pic_view.dart';
import 'package:eight_date_app/presentation/views/profile/final_view.dart';
import 'package:eight_date_app/presentation/views/sign_up/components/index.dart';
import 'package:eight_date_app/presentation/views/sign_up/sign_up_view.dart';
import 'package:flutter/material.dart';

import '../src/index.dart';
import '../views/register/register.dart';
import '../views/splash/splash.dart';

class Routes {
  static const String mainRoute = '/mainRoute';
  static const String splashRoute = '/';

  // SignUp views
  static const String registerRoute = '/register';
  static const String phoneVerificationRoute = '/phoneVerification';
  static const String signUpRoute = '/signUp';
  static const String enableNotificationRoute = '/enableNotification';
  static const String selectCityRoute = '/selectCity';
  static const String selectGenderRoute = '/selectGender';
  static const String selectDatingGenderRoute = '/selectDatingGender';

  // SignUp profile views
  static const String addProfilePicRoute = '/addProfilePic';
  static const String addBioRoute = '/addBio';
  static const String addInterestRoute = '/addInterest';
  static const String addInstaNameRoute = '/addInstaName';
  static const String signUpFinalRoute = '/signUpFinal';
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
      case Routes.enableNotificationRoute:
        return MaterialPageRoute(
            builder: (_) => const EnableNotificationView());
      case Routes.selectCityRoute:
        return MaterialPageRoute(builder: (_) => const SelectCityView());
      case Routes.selectGenderRoute:
        return MaterialPageRoute(builder: (_) => const SelectGenderView());
      case Routes.selectDatingGenderRoute:
        return MaterialPageRoute(
            builder: (_) => const SelectDatingGenderView());

      // profile
      case Routes.addProfilePicRoute:
        return MaterialPageRoute(builder: (_) => const AddProfilePicView());
      case Routes.addBioRoute:
        return MaterialPageRoute(builder: (_) => const AddBioView());
      case Routes.addInterestRoute:
        return MaterialPageRoute(builder: (_) => const AddInterestView());
      case Routes.addInstaNameRoute:
        return MaterialPageRoute(builder: (_) => const AddInstaNameView());
      case Routes.signUpFinalRoute:
        return MaterialPageRoute(builder: (_) => const SingUpFinalView());
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
