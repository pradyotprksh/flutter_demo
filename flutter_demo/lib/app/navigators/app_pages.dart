import 'package:flutter_demo/app/app.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
/// and will be used in the material app.
class AppPages {
  static const initial = Routes.splashScreen;

  static var transitionDuration = const Duration(
    milliseconds: 550,
  );

  static final pages = <GetPage>[
    GetPage<SplashView>(
      name: _Paths.splashScreen,
      transitionDuration: transitionDuration,
      page: () => SplashView(),
      binding: SplashBinding(),
      transition: Transition.native,
    ),
  ];
}
