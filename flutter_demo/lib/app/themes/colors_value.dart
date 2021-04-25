import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A list of custom color used in the application.
abstract class ColorsValue {
  static const Map<int, Color> primaryColorSwatch = {
    50: Color.fromRGBO(246, 207, 85, .1),
    100: Color.fromRGBO(246, 207, 85, .2),
    200: Color.fromRGBO(246, 207, 85, .3),
    300: Color.fromRGBO(246, 207, 85, .4),
    400: Color.fromRGBO(246, 207, 85, .5),
    500: Color.fromRGBO(246, 207, 85, .6),
    600: Color.fromRGBO(246, 207, 85, .7),
    700: Color.fromRGBO(246, 207, 85, .8),
    800: Color.fromRGBO(246, 207, 85, .9),
    900: Color.fromRGBO(246, 207, 85, .10),
  };

  static const Color primaryColor = Color(
    primaryColorHex,
  );

  static const Color accentColor = Color(
    accentColorHex,
  );

  static const Color darkBackgroundColor = Color(
    darkBackgroundColorHex,
  );

  static const Color lightBackgroundColor = Color(
    lightBackgroundColorHex,
  );

  static const Color darkSecondColor = Color(
    darkSecondColorHex,
  );

  static const Color subtitleColor = Color(
    subtitleColorHex,
  );

  static const Color magentaColor = Color(
    magentaColorHex,
  );

  static const int primaryColorHex = 0xFFF6CF55;

  static const int accentColorHex = 0xFFE37645;

  static const int darkSecondColorHex = 0xFF2D2D2D;

  static const int darkBackgroundColorHex = 0xFF181818;

  static const int lightBackgroundColorHex = 0xFFF0F0F0;

  static const int subtitleColorHex = 0xFFC1C1C1;

  static const int magentaColorHex = 0xFFFF00FF;

  static Color themeOppositeColor() =>
      Get.isDarkMode ? Colors.white : darkBackgroundColor;

  static Color themeColor() =>
      Get.isDarkMode ? darkBackgroundColor : Colors.white;

  static Color themeSecondColor() =>
      Get.isDarkMode ? darkSecondColor : Colors.white;
}
