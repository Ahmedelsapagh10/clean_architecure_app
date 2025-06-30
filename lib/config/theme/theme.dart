import 'package:clean_architecure_app/core/utiles/app_colors.dart';
import 'package:clean_architecure_app/core/utiles/app_strings.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.scaffoldBackgroundColor,
    ),
    brightness: Brightness.light,
    fontFamily: AppStrings.fontFamily,
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    ),
  );
}
