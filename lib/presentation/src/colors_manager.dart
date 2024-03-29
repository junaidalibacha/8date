import 'package:flutter/material.dart';

class ColorManager {
  static Color transparent = Colors.transparent;
  static Color primary = HexColor.fromHex('#121212');
  static Color secondary = HexColor.fromHex('#525253');
  static Color darkGrey = HexColor.fromHex('#525252');
  static Color accent = HexColor.fromHex('#06C3FF');
  static Color yellow = HexColor.fromHex('#FAFF00');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color lightGrey = HexColor.fromHex('#D9D9D9');

  // static const Color white = Colors.white;
  //
  // static Color darkPrimary = HexColor.fromHex('#d17d11');
  static Color primaryOpacity70 = HexColor.fromHex('#B3ED9728');
  static Color grey = HexColor.fromHex('#737477');
  static Color grey1 = HexColor.fromHex('#AAAAAA');
  static Color grey2 = HexColor.fromHex('#797979');
  static Color error = HexColor.fromHex('#e61f34'); // red color
  static Color red = Colors.red; // red color
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = 'FF$hexColorString'; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
