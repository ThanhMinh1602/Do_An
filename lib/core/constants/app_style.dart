import 'package:do_an_flutter/core/constants/app_color.dart';
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
  static TextStyle textContent = TextStyle(
      fontSize: 14.0.sp, fontWeight: FontWeight.w400, color: AppColor.grey300);

  static TextStyle textTitleScreenHeight700 = TextStyle(
      fontSize: 20.0.sp,
      fontWeight: FontWeight.w600,
      color: AppColor.whiteColor);
  static TextStyle textContentScreenHeight700 = TextStyle(
      fontSize: 10.0.sp, fontWeight: FontWeight.w400, color: AppColor.grey300);
}
