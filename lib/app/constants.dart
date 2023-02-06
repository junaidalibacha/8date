import 'package:eight_date_app/presentation/src/index.dart';
import 'package:flutter/cupertino.dart';

class Constant {
  // static const String baseUrl = 'https://fluttermvvmtest.mocklab.io';
  // static const String token = 'get API token here';
}

Text kText24(String text) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(24),
    ),
  );
}

Text kText32(String text) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(32),
    ),
  );
}

Text kText40(String text) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(40),
    ),
  );
}

Text kText100(String text) {
  return Text(
    text,
    style: TextStyleManager.mediumTextStyle(
      fontSize: getProportionateScreenHeight(100),
    ),
  );
}

const double kDesignHeight = 852.0;
const double kDesignWidth = 393.0;

const kEmpty = "";
const kZero = 0;
