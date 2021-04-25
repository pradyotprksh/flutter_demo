import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A dimension class which will contain all the dimensions
/// used all over the application.
abstract class Dimens {
  static const double zero = 0;
  static const double pointOne = 0.1;
  static const double one = 1;
  static const double two = 2;
  static const double three = 3;
  static const double four = 4;
  static const double five = 5;
  static const double six = 6;
  static const double seven = 7;
  static const double eight = 8;
  static const double nine = 9;
  static const double ten = 10;
  static const double twenty = 20;
  static const double thirty = 30;
  static const double fourty = 40;
  static const double fifty = 50;
  static const double sixty = 60;
  static const double seventy = 70;
  static const double eighty = 80;
  static const double ninty = 90;
  static const double hundred = 100;

  /// Get height percent [value].
  static double getHeightPercent(double value) => Get.height * value;

  /// Get width percent [value].
  static double getWidthPercent(double value) => Get.width * value;

  static const EdgeInsets edgeInsets15_15_15_15 = EdgeInsets.fromLTRB(
    Dimens.ten + Dimens.five,
    Dimens.ten + Dimens.five,
    Dimens.ten + Dimens.five,
    Dimens.ten + Dimens.five,
  );
}
