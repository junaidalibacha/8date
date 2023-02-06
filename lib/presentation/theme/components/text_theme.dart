import 'package:eight_date_app/presentation/src/index.dart';
import 'package:flutter/material.dart';

TextTheme getTextTheme(BuildContext context) {
  return TextTheme(
    bodyText1: TextStyleManager.regularTextStyle(),
    bodyText2: TextStyleManager.regularTextStyle(
      fontSize: 32,
    ).apply(
      color: ColorManager.white,
    ),
  );

  // TextTheme(
  //   headline1: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   headline2: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   headline3: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   headline4: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   headline5: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   headline6: TextStyleManager.semiBoldTextStyle(
  //     textColor: ColorManager.white,
  //     fontSize: FontSize.s16,
  //   ),
  //   subtitle1: TextStyleManager.mediumTextStyle(
  //     color: ColorManager.white,
  //     fontSize: FontSize.s14,
  //   ),
  //   subtitle2: TextStyleManager.mediumTextStyle(
  //     color: ColorManager.white,
  //     fontSize: FontSize.s14,
  //   ),
  //   bodyText1: TextStyleManager.regularTextStyle(
  //     color: ColorManager.white,
  //   ),
  //   caption: TextStyleManager.regularTextStyle(
  //     color: ColorManager.white,
  //   ),
  // );
}
