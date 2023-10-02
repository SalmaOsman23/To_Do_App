import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {

  static final TextStyle TaskTitle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 18,
      color: AppColors.primaryColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
  );
  static final TextStyle TaskDescription = TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 14,
      color: AppColors.primaryColor,
      fontFamily: GoogleFonts.poppins().fontFamily,
  );
/*  static final TextStyle dateSettings = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.black,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );*/

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
          selectedIconTheme: IconThemeData(size: 32),
          unselectedIconTheme: IconThemeData(size: 30)
      ),
      textTheme: TextTheme(
          bodyLarge: TaskTitle,
          bodyMedium: TaskDescription
      )
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
    textTheme: TextTheme(
      bodyLarge: TaskTitle,
      bodyMedium: TaskDescription
    )

  );
}
