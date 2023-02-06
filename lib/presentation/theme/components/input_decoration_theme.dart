import 'package:flutter/material.dart';

import '../../src/index.dart';

InputDecorationTheme getInputDecoration() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.all(AppPadding.p8),
    hintStyle: TextStyleManager.regularTextStyle(
      color: ColorManager.grey1,
    ),
    labelStyle: TextStyleManager.mediumTextStyle(
      color: ColorManager.darkGrey,
    ),
    errorStyle: TextStyleManager.regularTextStyle(
      color: ColorManager.error,
    ),
    enabledBorder: OutlineInputBorderStyle.getEnabledBorder(),
    focusedBorder: OutlineInputBorderStyle.getFocusBorder(),
    errorBorder: OutlineInputBorderStyle.getErrorBorder(),
    focusedErrorBorder: OutlineInputBorderStyle.getFocusedErrorBorder(),
  );
}
