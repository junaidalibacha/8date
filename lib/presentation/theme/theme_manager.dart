import 'package:flutter/material.dart';

import '../src/index.dart';
import 'components/index.dart';

ThemeData getAppTheme(BuildContext context) {
  return ThemeData(
    scaffoldBackgroundColor: ColorManager.primary,
    // primaryColor: ColorManager.primary,
    // primaryColorDark: ColorManager.darkPrimary,
    // primaryColorLight: ColorManager.primaryOpacity70,
    // disabledColor: ColorManager.grey1,
    // splashColor: ColorManager.primaryOpacity70,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.grey, // accent color
    ),
    textTheme: getTextTheme(context),
    appBarTheme: getAppBarTheme(),
    cardTheme: getCardTheme(ThemeMode.light),
    // buttonTheme: GetButtonTheme.appButtonTheme(),
    textButtonTheme: GetButtonTheme.textButtonThemeData(),
    elevatedButtonTheme: GetButtonTheme.elevatedButtonTheme(),
    inputDecorationTheme: getInputDecoration(),
  );
}
