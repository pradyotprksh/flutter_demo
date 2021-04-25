import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_demo/app/app.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

/// A list of styles used all over the application.
abstract class Styles {
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    platform: TargetPlatform.iOS,
    accentColorBrightness: Brightness.dark,
    backgroundColor: ColorsValue.lightBackgroundColor,
    fontFamily: GoogleFonts.muli().fontFamily,
    primaryColor: ColorsValue.primaryColor,
    primarySwatch: const MaterialColor(
      ColorsValue.primaryColorHex,
      ColorsValue.primaryColorSwatch,
    ),
    accentColor: ColorsValue.accentColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: elevatedButtonStyle,
    textButtonTheme: textButtonStyle,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    platform: TargetPlatform.iOS,
    accentColorBrightness: Brightness.light,
    backgroundColor: ColorsValue.darkBackgroundColor,
    fontFamily: GoogleFonts.muli().fontFamily,
    primaryColor: ColorsValue.primaryColor,
    primarySwatch: const MaterialColor(
      ColorsValue.primaryColorHex,
      ColorsValue.primaryColorSwatch,
    ),
    accentColor: ColorsValue.accentColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    elevatedButtonTheme: elevatedButtonStyle,
    textButtonTheme: textButtonStyle,
  );

  static TextStyle white15 = GoogleFonts.muli(
    fontSize: Dimens.ten + Dimens.five,
    color: Colors.white,
  );

  static TextStyle white14 = GoogleFonts.muli(
    fontSize: Dimens.ten + Dimens.four,
    color: Colors.white,
  );

  static TextStyle bold30 = GoogleFonts.muli(
    fontSize: Dimens.ten + Dimens.twenty,
    fontWeight: FontWeight.bold,
    color: ColorsValue.themeColor(),
  );

  static TextStyle oppositeBoldl18 = GoogleFonts.muli(
    fontSize: Dimens.ten + Dimens.eight,
    fontWeight: FontWeight.bold,
    color: ColorsValue.themeOppositeColor(),
  );

  static ElevatedButtonThemeData elevatedButtonStyle = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      primary: ColorsValue.primaryColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.thirty,
        ),
      ),
      padding: Dimens.edgeInsets15_15_15_15,
    ),
  );

  static TextButtonThemeData textButtonStyle = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.transparent,
      elevation: Dimens.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          Dimens.thirty,
        ),
      ),
    ),
  );

  static IconThemeData iconThemeData = IconThemeData(
    color: Get.isDarkMode ? Colors.white : ColorsValue.darkBackgroundColor,
  );
}
