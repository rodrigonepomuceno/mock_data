import 'package:flutter/painting.dart';
import 'package:mock_data/themes/app_colors.dart';

class AppTextStyle {
  static TextStyle h1({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 67,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle h2({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 50,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle h3({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 32,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle h4({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 28,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle h5({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 22,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle h6({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 16,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle titleHome({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 21,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w600,
      );

  static TextStyle p({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 14,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle small({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 12,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle detailsList({Color color, FontWeight fontWeight}) =>
      TextStyle(
        fontSize: 11,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle tiny({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 10,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle micro({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 8,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );

  static TextStyle header({Color color, FontWeight fontWeight}) => TextStyle(
        fontSize: 22,
        color: color ?? AppColors.black,
        fontStyle: FontStyle.normal,
        fontWeight: fontWeight ?? FontWeight.w400,
      );
}
