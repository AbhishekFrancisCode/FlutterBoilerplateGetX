import 'package:flutter/material.dart';

import 'app_colors.dart';

class FinemakeFonts {
  static const String urbanist = "urbanist"; //U
  static const double letterSpacing = 0.32;
  //font weight
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semibold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  //font color
  static const Color black = AppColors.finemake_333333;
  static const Color white = AppColors.finemake_white;
  static const Color red = AppColors.finemake_CE1E1E;
  static const Color grey = AppColors.finemake_999999;
  //font size
  static const double s10 = 10.0;
  static const double s12 = 12.0;
  static const double s14 = 14.0;
  static const double s16 = 16.0;
  static const double s18 = 18.0;
  static const double s20 = 20.0;
  static const double s22 = 22.0;

  static finemakeFont(Color colorz, FontWeight fontWeightz, double fontSizez) =>
      TextStyle(
          fontFamily: urbanist,
          color: colorz,
          fontWeight: fontWeightz,
          letterSpacing: letterSpacing,
          fontSize: fontSizez);
// ------------------------------Font-------------------------------------//
  //font 10
  static TextStyle blackReg10 = finemakeFont(black, regular, s10);
  //font 12
  static TextStyle blackMed12 = finemakeFont(black, medium, s12);
  static TextStyle whiteReg12 = finemakeFont(white, regular, s12);
  static TextStyle redReg12 = finemakeFont(red, regular, s12);
  static TextStyle greyReg12 = finemakeFont(grey, regular, s12);
  //font 14
  static TextStyle blackReg14 = finemakeFont(black, regular, s14);
  static TextStyle blackMed14 = finemakeFont(black, medium, s14);
  static TextStyle blackSbold14 = finemakeFont(black, semibold, s14);
  static TextStyle redSbold14 = finemakeFont(red, semibold, s14);
  static TextStyle redBold14 = finemakeFont(red, bold, s14);
  //font 16
  static TextStyle blackSbold16 = finemakeFont(black, semibold, s18);
  static TextStyle greySbold16 = finemakeFont(grey, semibold, s18);
  static TextStyle blackBold16 = finemakeFont(black, bold, s16);
  static TextStyle redBold16 = finemakeFont(red, bold, s16);
  //font 18
  static TextStyle blackSbold18 = finemakeFont(black, semibold, s18);
  static TextStyle whiteSbold18 = finemakeFont(white, semibold, s18);
  //font 20
  static TextStyle blackBold20 = finemakeFont(black, bold, s20);
  //font 22
  static TextStyle blackBold22 = finemakeFont(black, bold, s22);
}
