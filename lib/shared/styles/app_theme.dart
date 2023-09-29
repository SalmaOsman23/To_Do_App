import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: AppColors.backgroundColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.white),

      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.primaryColor,),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //type: BottomNavigationBarType.shifting,
          backgroundColor: AppColors.transparent,
          selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.grey,
      ),
  );


  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.accentDark,
        foregroundColor: AppColors.white),
    primaryColor: AppColors.primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.accentDark,
        selectedItemColor: AppColors.primaryColor,
        unselectedItemColor: AppColors.white,
        selectedIconTheme: IconThemeData(size: 32),
        unselectedIconTheme: IconThemeData(size: 27)),

  );
}
