import 'package:eight_date_app/presentation/src/index.dart';
import 'package:eight_date_app/presentation/views_models/add_profile_view_model/add_profile_view_model.dart';
import 'package:eight_date_app/presentation/views_models/membership_view_model/membership_view_model.dart';
import 'package:eight_date_app/presentation/views_models/profile_view_model/profile_view_model.dart';
import 'package:eight_date_app/presentation/views_models/register_view_model/register_view_model.dart';
import 'package:eight_date_app/presentation/views_models/sign_up_view_model/sign_up_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../presentation/routes/routes.dart';
import '../presentation/theme/theme_manager.dart';
import '../presentation/views_models/edit_profile_view_model/edit_profile_view_model.dart';
import '../presentation/views_models/nav_bar_view_model/nav_bar_view_model.dart';
import '../presentation/views_models/phone_verification_view_model/phone_verification_view_model.dart';
import '../presentation/views_models/settings_view_model/setting_view_model.dart';
import '../presentation/views_models/verification_code_view_model/verification_view_mode.dart';

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp._internal();
  static const MyApp instance = MyApp._internal();
  factory MyApp() => instance;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => RegisterViewModel()),
        ChangeNotifierProvider(create: (ctx) => PhoneVerificationViewModel()),
        ChangeNotifierProvider(create: (ctx) => SignUpViewModel()),
        ChangeNotifierProvider(create: (ctx) => ProfileViewModel()),
        ChangeNotifierProvider(create: (ctx) => MembershipViewModel()),
        ChangeNotifierProvider(create: (ctx) => VerificationCodeViewModel()),
        ChangeNotifierProvider(create: (ctx) => NavBarViewModel()),
        ChangeNotifierProvider(create: (ctx) => AddProfileViewModel()),
        ChangeNotifierProvider(create: (ctx) => EditUserProfileViewModel()),
        ChangeNotifierProvider(create: (ctx) => SettingsViewModel()),
      ],
      child: GetMaterialApp(
        builder: (context, child) {
          SizeConfig().init(context);
          return Theme(data: getAppTheme(context), child: child!);
        },
        debugShowCheckedModeBanner: false,
        // theme: getAppTheme(context),
        onGenerateRoute: RoutesGenerator.getRoute,
        initialRoute: Routes.splashRoute,
        // initialRoute: Routes.enableNotificationRoute,
      ),
    );
  }
}
