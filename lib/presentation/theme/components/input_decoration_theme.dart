import 'package:flutter/material.dart';

import '../../src/index.dart';

InputDecorationTheme getInputDecoration() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.all(AppPadding.p8),
    hintStyle: TextStyleManager.regularTextStyle(
      color: ColorManager.grey,
    ),
    labelStyle: TextStyleManager.mediumTextStyle(
      color: ColorManager.darkGrey,
    ),
    errorStyle: TextStyleManager.regularTextStyle(
      color: ColorManager.error,
    ),
    // enabledBorder: UnderLineInptBorderStyle.getEnabledBorder(),
    // focusedBorder: UnderLineInptBorderStyle.getFocusBorder(),
    // errorBorder: UnderLineInptBorderStyle.getErrorBorder(),
    // focusedErrorBorder: UnderLineInptBorderStyle.getFocusedErrorBorder(),
  );
}
