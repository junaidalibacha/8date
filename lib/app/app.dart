import 'package:eight_date_app/presentation/src/index.dart';
import 'package:eight_date_app/presentation/views_models/register_view_model/register_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import '../presentation/routes/routes.dart';
import '../presentation/theme/theme_manager.dart';

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
      ),
    );
  }
}
