import 'package:flutter_demo/app/app.dart';
import 'package:get/get.dart';

/// A chunk of routes taken in the application.
abstract class RouteManagement {
  /// Go to the splash screen.
  static void goToSplash() {
    Get.offAllNamed<void>(
      Routes.splashScreen,
    );
  }
}
