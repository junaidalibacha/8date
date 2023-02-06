import 'package:flutter/material.dart';

import '../../src/index.dart';

AppBarTheme getAppBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    color: ColorManager.primary,
    shadowColor: ColorManager.primaryOpacity70,
    elevation: AppSize.s4,
    titleTextStyle: TextStyleManager.regularTextStyle(
      color: ColorManager.white,
      fontSize: FontSize.s16,
    ),
  );
}
