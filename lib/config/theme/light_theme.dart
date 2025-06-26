import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.beige,
  primaryColor: AppColors.salmon,
  colorScheme: ColorScheme.light(
    primary: AppColors.salmon,
    secondary: AppColors.brownRosy,
    surface: AppColors.white,
    onPrimary: AppColors.white,
    onSecondary: AppColors.black,
  ),
  textTheme: TextTheme(
    headlineLarge: TextStyle(
      color: AppColors.black,
      fontSize: 24,
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      color: AppColors.black,
      fontSize: 16,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.salmon,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
);