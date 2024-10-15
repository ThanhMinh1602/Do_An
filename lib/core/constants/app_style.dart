import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  AppStyle._();

  static TextStyle textHeader = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w600,
  );
  static TextStyle textDescription = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle textTitle = TextStyle(
      fontSize: 24.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor);

  static TextStyle textContentScreenHeight700 = TextStyle(
      fontSize: 10.0.sp, fontWeight: FontWeight.w400, color: AppColor.grey300);

  static TextStyle semibold_20 = TextStyle(
      fontSize: 20.0.sp, fontWeight: semibold, color: AppColor.whiteColor);
  static TextStyle semibold_18 = TextStyle(
      fontSize: 18.0.sp, fontWeight: semibold, color: AppColor.whiteColor);

  static TextStyle semibold_16 = TextStyle(
      fontSize: 16.0.sp, fontWeight: semibold, color: AppColor.whiteColor);

  static TextStyle bold_14 = TextStyle(
      fontSize: 14.0.sp, fontWeight: bold, color: AppColor.whiteColor);

  static TextStyle regular_14 = TextStyle(
      fontSize: 14.0.sp, fontWeight: regular, color: AppColor.grey300);

  static TextStyle regular_12 = TextStyle(
      fontSize: 12.0.sp, fontWeight: regular, color: AppColor.grey500);

  // desktop
  static TextStyle desktop_56_bold =
      TextStyle(fontSize: 56, fontWeight: bold, color: AppColor.grey500);
  static TextStyle desktop_28_medium = const TextStyle(
      fontSize: 28, fontWeight: medium, color: AppColor.whiteColor);
}
