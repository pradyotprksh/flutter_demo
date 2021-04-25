import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/app/app.dart';
import 'package:flutter_demo/domain/domain.dart';
import 'package:get/get.dart';

/// Main entry of the application.
void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await initServices();
    runApp(MyApp());
  } catch (error) {
    Utility.printELog(error.toString());
  }
}

/// Initialize the services before the app starts.
Future<void> initServices() async {
  Get.put(
    CommonService(),
  );

  /// Services
  await Get.putAsync<void>(
    () => CommonService().init(),
    permanent: true,
  );
}

/// The main MyApp class which contains the initial application details.
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return GetMaterialApp(
      title: StringConstants.appName,
      debugShowCheckedModeBanner: foundation.kDebugMode,
      themeMode: ThemeMode.system,
      theme: Styles.lightTheme,
      darkTheme: Styles.darkTheme,
      locale: const Locale(
        'en',
      ),
      translations: TranslationsFile(),
      supportedLocales: TranslationsFile.listOfLocales,
      getPages: AppPages.pages,
      initialRoute: AppPages.initial,
      logWriterCallback: Utility.localLogWriter,
      enableLog: foundation.kDebugMode,
    );
  }
}
