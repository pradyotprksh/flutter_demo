import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// The main translation file which will help
/// in localization of the application
///
/// [keys] : Contains all the language code which will be
/// used in the application
///
/// For more details on how to implement localization
/// can go to [GetX Internationalization](https://pub.dev/packages/get#internationalization)
/// and read there documentation.
class TranslationsFile extends Translations {
  /// List of locales used in the application
  static const listOfLocales = <Locale>[
    Locale('en', ''),
  ];

  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'appName': 'Fhotos',
          'welcomeTo': 'Welcome to',
          'noInternet': 'You are not connected to the internet. Please check.',
          'okay': 'Okay',
          'somethingWentWrong': 'Something Went Wrong.',
        },
      };
}
