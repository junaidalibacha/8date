import 'package:eight_date_app/presentation/src/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextStyleManager {
  static TextStyle _getTextStyle(
    // String fontFamily,
    Color textColor,
    double fontSize,
    FontWeight fontWeight,
  ) {
    return GoogleFonts.bangers(
      // fontFamily: fontFamily,
      color: textColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  static TextStyle lightTextStyle({
    Color textColor = Colors.white,
    double fontSize = FontSize.s14,
  }) {
    return _getTextStyle(
      textColor,
      fontSize,
      FontWeightManager.light,
    );
  }

  static TextStyle regularTextStyle({
    Color color = Colors.white,
    double fontSize = FontSize.s14,
  }) {
    return _getTextStyle(
      color,
      fontSize,
      FontWeightManager.regular,
    );
  }

  static TextStyle mediumTextStyle({
    Color color = Colors.white,
    double fontSize = FontSize.s14,
  }) {
    return _getTextStyle(
      color,
      fontSize,
      FontWeightManager.medium,
    );
  }

  static TextStyle semiBoldTextStyle({
    Color textColor = Colors.white,
    double fontSize = FontSize.s14,
  }) {
    return _getTextStyle(
      textColor,
      fontSize,
      FontWeightManager.semiBold,
    );
  }

  static TextStyle boldTextStyle({
    Color textColor = Colors.white,
    double fontSize = FontSize.s14,
  }) {
    return _getTextStyle(
      textColor,
      fontSize,
      FontWeightManager.bold,
    );
  }
}

class OutlineInputBorderStyle {
  static OutlineInputBorder _getOutlineInputBorder({
    Color color = Colors.grey,
    double width = AppSize.s1_5,
    BorderRadius borderRadius = const BorderRadius.all(
      Radius.circular(AppSize.s8),
    ),
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: color, width: width),
      borderRadius: borderRadius,
    );
  }

  static OutlineInputBorder getEnabledBorder() {
    return _getOutlineInputBorder(
      color: ColorManager.grey,
      // width: AppSize.s1_5,
      // borderRadius: BorderRadius.circular(AppSize.s8),
    );
  }

  static OutlineInputBorder getFocusBorder() {
    return _getOutlineInputBorder(
      color: ColorManager.primary,
      // width: AppSize.s1_5,
      // borderRadius: BorderRadius.circular(AppSize.s8),
    );
  }

  static OutlineInputBorder getErrorBorder() {
    return _getOutlineInputBorder(
      color: ColorManager.error,
      // width: AppSize.s1_5,
      // borderRadius: BorderRadius.circular(AppSize.s8),
    );
  }

  static OutlineInputBorder getFocusedErrorBorder() {
    return _getOutlineInputBorder(
      color: ColorManager.primary,
      // width: AppSize.s1_5,
      // borderRadius: BorderRadius.circular(AppSize.s8),
    );
  }
}
