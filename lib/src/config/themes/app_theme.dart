import 'package:bs_test/src/presentation/utils/design_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData.light().copyWith(
    useMaterial3: true,
    primaryColor: AppColors.primaryColor,
    primaryColorLight: AppColors.primaryColor,
    splashColor: Colors.transparent,
    scaffoldBackgroundColor: AppColors.primaryShadowColor,
    hintColor: AppColors.primaryColor.withOpacity(.4),
    iconTheme: const IconThemeData(size: 24),
    appBarTheme: AppBarTheme(
      elevation: 2,
      toolbarHeight: appBarHeight,
      titleTextStyle: TextThemeX.text18.copyWith(
        color: AppColors.white,
        fontWeight: FontWeight.w600,
      ),
      backgroundColor: AppColors.blue,
    ),
    textSelectionTheme:
    TextSelectionThemeData(cursorColor: AppColors.primaryColor),
    cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
      primaryColor: AppColors.primaryColor,
      barBackgroundColor: AppColors.primaryShadowColor,
      scaffoldBackgroundColor: AppColors.primaryShadowColor,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(
          fontSize: 14,
          color: AppColors.white,
          fontFamily: getSFProFontFamily,
        ),
        primaryColor: AppColors.primaryColor,
      ),
    ),
    // colorScheme: ColorScheme(
    //   brightness: Brightness.light,
    //   primary: lPrimaryColor,
    //   onPrimary: lPrimaryColor.withAlpha(57),
    //   secondary: blueGray,
    //   onSecondary: blueGray.withAlpha(57),
    //   error: redColor2,
    //   onError: redColor2.withAlpha(57),
    //   background: lbgColor,
    //   onBackground: lbgColor.withAlpha(57),
    //   surface: getColorWhiteBlack,
    //   onSurface: getColorWhiteBlack.withAlpha(57),
    // ),
  );

// static final darkTheme = ThemeData.dark().copyWith(
//   useMaterial3: true,
//   primaryColor: dPrimaryColor,
//   primaryColorLight: dPrimaryColor,
//   splashColor: Colors.transparent,
//   scaffoldBackgroundColor: dbgColor,
//   hintColor: lPrimaryColor.withOpacity(.4),
//   iconTheme: const IconThemeData(size: 24),
//   appBarTheme: AppBarTheme(
//     elevation: 0,
//     toolbarHeight: 56,
//     titleTextStyle: TextThemeX.text18.copyWith(
//       letterSpacing: -.24,
//       color: getPrimaryTextColor,
//       fontWeight: FontWeight.w600,
//     ),
//     backgroundColor: dbgColor,
//   ),
//   textSelectionTheme:
//       const TextSelectionThemeData(cursorColor: dPrimaryColor),
//   cupertinoOverrideTheme: NoDefaultCupertinoThemeData(
//     barBackgroundColor: dbgColor,
//     primaryColor: dPrimaryColor,
//     scaffoldBackgroundColor: dbgColor,
//     textTheme: CupertinoTextThemeData(
//       textStyle: TextStyle(
//         fontSize: 14,
//         color: dPrimaryTextColor,
//         fontFamily: getSFProFontFamily,
//       ),
//       primaryColor: dPrimaryColor,
//     ),
//   ),
//   colorScheme: ColorScheme(
//     brightness: Brightness.light,
//     primary: dPrimaryColor,
//     onPrimary: dPrimaryColor.withAlpha(57),
//     secondary: blueGray,
//     onSecondary: blueGray.withAlpha(57),
//     error: redColor2,
//     onError: redColor2.withAlpha(57),
//     background: dbgColor,
//     onBackground: dbgColor.withAlpha(57),
//     surface: getColorWhiteBlack,
//     onSurface: getColorWhiteBlack.withAlpha(57),
//   ),
// );
}