import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData get lightTheme => ThemeData(
  scaffoldBackgroundColor: AppColors.white,
  primaryColor: AppColors.salmon,
  hintColor: AppColors.beige,
  dividerColor: AppColors.salmon,

  expansionTileTheme: ExpansionTileThemeData(
    iconColor: AppColors.black,
    collapsedIconColor: AppColors.salmon,
    textColor: AppColors.black,
    collapsedTextColor: AppColors.salmon,

  ),
  textTheme: TextTheme(
    titleLarge: TextStyle(
      color: AppColors.salmon,
      fontWeight: FontWeight.bold,
      fontSize: 24,
    ),
    titleMedium: TextStyle(color: AppColors.black, fontSize: 20),
    titleSmall: TextStyle(color: AppColors.black, fontSize: 14),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.white,
    centerTitle: true,
    titleTextStyle: TextStyle(
      fontWeight: FontWeight.w900,
      color: AppColors.salmon,
      fontSize: 22,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.salmon,
      foregroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    ),
  ),
  dividerTheme: DividerThemeData(color: AppColors.salmon, thickness: 1),
  iconTheme: IconThemeData(color: AppColors.white),
);
