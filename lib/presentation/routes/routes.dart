import 'package:eight_date_app/presentation/common/bottom_nav.dart';
import 'package:eight_date_app/presentation/views/User_Profile/edit_user_profile.dart';
import 'package:eight_date_app/presentation/views/User_Profile/user_profile_view.dart';
import 'package:eight_date_app/presentation/views/chat_view/chat_view.dart';
import 'package:eight_date_app/presentation/views/home_page/home_page.dart';
import 'package:eight_date_app/presentation/views/membership/congrat_view.dart';
import 'package:eight_date_app/presentation/views/phone_verification/phone_verification.dart';
import 'package:eight_date_app/presentation/views/profile/add_bio_view.dart';
import 'package:eight_date_app/presentation/views/profile/add_insta_name.dart';
import 'package:eight_date_app/presentation/views/profile/add_interest_view.dart';
import 'package:eight_date_app/presentation/views/profile/add_profile_pic_view.dart';
import 'package:eight_date_app/presentation/views/profile/final_view.dart';
import 'package:eight_date_app/presentation/views/profile/under_review.dart';
// import 'package:eight_date_app/presentation/views/settings/chat_bubble.dart';
import 'package:eight_date_app/presentation/views/settings/notifications_setting.dart';
import 'package:eight_date_app/presentation/views/settings/prefrences_setting.dart';
import 'package:eight_date_app/presentation/views/settings/settings_cities.dart';
import 'package:eight_date_app/presentation/views/settings/settings_view.dart';
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
  static const String selectBirthDayView = '/SelectBirthDayRoute';

  // SignUp profile views
  static const String addProfilePicRoute = '/addProfilePic';
  static const String addBioRoute = '/addBio';
  static const String addInterestRoute = '/addInterest';
  static const String addInstaNameRoute = '/addInstaName';
  static const String signUpFinalRoute = '/signUpFinal';
  static const String underReviewRoute = '/underReview';

  // Membership views
  static const String congratsRoute = '/congrats';
  static const String subscriptionPlanRoute = '/subscriptionPlan';
  static const String verificationCodeRoute = '/VerificationCode';
  //home page..
  static const String homePageRoute = '/HomePage';
  static const String chatViewRoute = '/chatView';
  static const String userProfileView = '/editProfileView';
  //bottom nav
  static const String bottomNavRoute = '/bottomNavRoute';
  //edit profile
  static const String editProfileView = '/editProfileRoute';
  //settings view
  static const String settingsView = '/settingsViewRoute';
  static const String prefrencesView = '/prefrencesViewRoute';
  static const String notificationSettings = '/notificationViewViewRoute';
  static const String settingCities = '/settingCities';
  static const String chatBubble = '/chatBubble';
}

class RoutesGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      // case Routes.phoneVerificationRoute:
      //   return MaterialPageRoute(builder: (_) => const PhoneVarificationView());
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
      case Routes.underReviewRoute:
        return MaterialPageRoute(builder: (_) => const UnderReview());
      case Routes.editProfileView:
        return MaterialPageRoute(builder: (_) => const EditProfileView());
      case Routes.selectBirthDayView:
        return MaterialPageRoute(builder: (_) => const SelectBirthDayView());

      // membership
      case Routes.congratsRoute:
        return MaterialPageRoute(builder: (_) => const CongratsView());

      case Routes.verificationCodeRoute:
        return MaterialPageRoute(
            builder: (_) => PhoneVarificationView(otp: ''));

      ///home page
      case Routes.homePageRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.userProfileView:
        return MaterialPageRoute(builder: (_) => const UserProfileView());
      case Routes.chatViewRoute:
        return MaterialPageRoute(builder: (_) => const ChatView());
      case Routes.bottomNavRoute:
        return MaterialPageRoute(builder: (_) => const BottomNav());
      // settings view
      case Routes.settingsView:
        return MaterialPageRoute(builder: (_) => const SettingView());
      case Routes.prefrencesView:
        return MaterialPageRoute(builder: (_) => const PrefrencesSetting());
      case Routes.notificationSettings:
        return MaterialPageRoute(builder: (_) => const NotificationSettings());
      case Routes.settingCities:
        return MaterialPageRoute(builder: (_) => const SettingCities());

      // case Routes.chatBubble:
      //   return MaterialPageRoute(builder: (_) => const ChatBubble());
      //
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
