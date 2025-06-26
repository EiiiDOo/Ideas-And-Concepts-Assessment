import 'package:flutter/material.dart';

class AppConstants {
  // Localization
  static const defaultLocale = Locale('en');
  static const fallbackLocale = Locale('en');
  static const supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];

  // Theme modes
  static const themeLight = 'light';
  static const themeDark = 'dark';
  static const themeSystem = 'system';

  // Storage Keys
  static const localeKey = 'locale';
  static const themeModeKey = 'themeMode';
}
