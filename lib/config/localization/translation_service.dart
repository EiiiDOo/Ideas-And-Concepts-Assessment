import 'dart:ui';

import 'package:get/get.dart';
import 'en_us.dart';
import 'ar_eg.dart';

class TranslationService extends Translations {
  static final locale = Locale('en', 'US');
  static final fallbackLocale = Locale('en', 'US');

  @override
  Map<String, Map<String, String>> get keys => {
    'en': enUs,
    'ar': arEg,
  };
}
