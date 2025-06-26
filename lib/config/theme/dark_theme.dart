import 'package:flutter/material.dart';

import 'app_colors.dart';



final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: AppColors.black,
  primaryColor: AppColors.orangeDark,
  colorScheme: ColorScheme.dark(
    primary: AppColors.orangeDark,
    secondary: AppColors.brownRosy,
    surface: AppColors.terracotta,
    onPrimary: AppColors.white,
    onSecondary: AppColors.white,
  ),
);