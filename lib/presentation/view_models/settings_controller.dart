import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core/constants/app_constants.dart';
import '../../core/services/local_storage_service.dart';

class SettingsController extends GetxController {
  final LocalStorageService storage;

  SettingsController({required this.storage});

  late final Locale locale;
  late final ThemeMode themeMode;

  Future<void> init() async {
    final langCode = storage.readString(AppConstants.localeKey);
    locale = langCode != null
        ? Locale(langCode)
        : Get.deviceLocale ?? AppConstants.defaultLocale;
    // Get.updateLocale(locale);

    final themeStr = storage.readString(AppConstants.themeModeKey);
    themeMode = _parseTheme(themeStr);
    Get.changeThemeMode(themeMode);
  }

  Future<void> changeLocale(Locale newLocale) async {
    await storage.writeString(AppConstants.localeKey, newLocale.languageCode);
    Get.updateLocale(newLocale);
  }

  ThemeMode _parseTheme(String? value) {
    switch (value) {
      case AppConstants.themeLight:
        return ThemeMode.light;
      case AppConstants.themeDark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
