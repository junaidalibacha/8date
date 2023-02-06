import 'package:flutter/material.dart';

import '../../src/index.dart';

CardTheme getCardTheme(ThemeMode themeMode) {
  return themeMode == ThemeMode.light
      ? CardTheme(
          color: ColorManager.white,
          shadowColor: ColorManager.grey,
          elevation: AppSize.s4,
        )
      : CardTheme(
          color: Colors.grey[100],
          // elevation: 5,
          shadowColor: Colors.black87,
        );
}
