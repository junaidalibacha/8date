import 'package:eight_date_app/presentation/src/index.dart';
import 'package:flutter/cupertino.dart';

class Constant {
  // static const String baseUrl = 'https://fluttermvvmtest.mocklab.io';
  // static const String token = 'get API token here';
}

Text kText13(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(13),
    ),
    textAlign: textAlign,
  );
}

Text kText16(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(16),
    ),
    textAlign: textAlign,
  );
}

Text kText20(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(20),
    ),
    textAlign: textAlign,
  );
}

Text kText24(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(24),
    ),
    textAlign: textAlign,
  );
}

Text kText32(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(32),
    ),
    textAlign: textAlign,
  );
}

Text kText40(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(40),
    ),
    textAlign: textAlign,
  );
}

Text kText100(String text, {TextAlign? textAlign}) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(100),
    ),
    textAlign: textAlign,
  );
}

const double kDesignHeight = 852.0;
const double kDesignWidth = 393.0;

const kEmpty = "";
const kZero = 0;
