import 'package:flutter/material.dart';
import 'package:travel/core/theme/colors.dart';
import 'package:sizer/sizer.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    backgroundColor: LightThemeColors.primaryWhite,
    scaffoldBackgroundColor: LightThemeColors.primaryWhite,
    primaryColor: LightThemeColors.primaryRed,
    accentColor: LightThemeColors.primaryGrey,
    primaryIconTheme: IconThemeData(color: LightThemeColors.primaryBlack),
    iconTheme: IconThemeData(
      color: LightThemeColors.primaryWhite,
    ),
    accentIconTheme: IconThemeData(
      color: LightThemeColors.secondaryGrey,
    ),
    appBarTheme: AppBarTheme(
      color: LightThemeColors.primaryWhite,
      elevation: 0.0,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: LightThemeColors.secondaryGrey,
      border: InputBorder.none,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 12.0.sp,
        fontFamily: "Signika",
        fontWeight: FontWeight.w400,
      ),
      bodyText2: TextStyle(
        color: LightThemeColors.primaryGrey,
        fontSize: 12.0.sp,
        fontFamily: "Signika",
        fontWeight: FontWeight.w400,
      ),
      headline1: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 24.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      headline2: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 22.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      headline3: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 20.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      headline4: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 18.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      headline5: TextStyle(
        color: LightThemeColors.primaryBlack,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      headline6: TextStyle(
        color: LightThemeColors.primaryGrey,
        fontSize: 16.0.sp,
        fontWeight: FontWeight.w900,
        fontFamily: "Signika",
      ),
      button: TextStyle(
        color: LightThemeColors.primaryWhite,
        fontSize: 14.0.sp,
        fontWeight: FontWeight.w400,
        fontFamily: "Signika",
      ),
    ),
  );
}
