import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/utils/font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyle {
  AppStyle._();

  // Header and description styles
  static TextStyle textHeader = TextStyle(
    fontSize: 40.sp,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textDescription = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w400,
  );

  // Title and content styles
  static TextStyle textTitle = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: FontWeight.w600,
    color: AppColor.whiteColor,
  );

  static TextStyle textContentScreenHeight700 = TextStyle(
    fontSize: 10.0.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.grey300,
  );

  // Regular styles
  static TextStyle regular_28 = TextStyle(
    fontSize: 28.0.sp,
    fontWeight: regular,
    color: AppColor.grey300,
  );

  static TextStyle regular_20 = TextStyle(
    fontSize: 20.0.sp,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_18 = TextStyle(
    fontSize: 18.0.sp,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_16 = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_14 = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: regular,
    color: AppColor.grey300,
  );

  static TextStyle regular_12 = TextStyle(
    fontSize: 12.0.sp,
    fontWeight: regular,
    color: AppColor.grey500,
  );

  // Semi-bold styles
  static TextStyle semibold_28 = TextStyle(
    fontSize: 28.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );
  static TextStyle semibold_24 = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_20 = TextStyle(
    fontSize: 20.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_18 = TextStyle(
    fontSize: 18.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_16 = TextStyle(
    fontSize: 16.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_14 = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );
  static TextStyle semibold_12 = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  // Bold styles
  static TextStyle bold_56 = TextStyle(
    fontSize: 56.sp,
    fontWeight: bold,
    color: AppColor.grey500,
  );

  static TextStyle bold_36 = TextStyle(
    fontSize: 36.sp,
    fontWeight: bold,
    color: AppColor.grey500,
  );

  static TextStyle bold_20 = TextStyle(
    fontSize: 20.0.sp,
    fontWeight: bold,
    color: AppColor.whiteColor,
  );

  static TextStyle bold_14 = TextStyle(
    fontSize: 14.0.sp,
    fontWeight: bold,
    color: AppColor.whiteColor,
  );

  // Medium styles
  static TextStyle medium_28 = TextStyle(
    fontSize: 28.sp,
    fontWeight: medium,
    color: AppColor.whiteColor,
  );
}
