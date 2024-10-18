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
    fontFamily: 'SF Pro Display',
    fontWeight: regular,
    color: AppColor.grey500,
  );

  static TextStyle regular_12_grey300 = TextStyle(
    fontSize: 12.0.sp,
    fontWeight: regular,
    fontFamily: 'SF Pro Display',
    color: AppColor.grey300,
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
    fontSize: 56,
    fontWeight: bold,
    color: AppColor.grey500,
  );

  static TextStyle bold_36 = TextStyle(
    fontSize: 36.sp,
    fontWeight: bold,
    color: AppColor.grey500,
  );
  static TextStyle bold_24 = TextStyle(
    fontSize: 24.0.sp,
    fontWeight: bold,
    color: AppColor.whiteColor,
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
  static TextStyle medium_14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: medium,
    color: AppColor.whiteColor,
  );

  static TextStyle medium_12 = TextStyle(
    fontSize: 12.sp,
    fontWeight: medium,
    color: AppColor.whiteColor,
  );
}

class DesktopAppStyle {
  DesktopAppStyle._();
  static TextStyle semiboldStyle_16 = const TextStyle(
    fontSize: 16.0, // Font-size
    fontWeight: semibold, // Font-weight (Semibold)
    height: 20.0 / 16.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: 0.0, // Không có letter-spacing (hoặc thêm nếu cần)
    color: AppColor.whiteColor,
  );

  static TextStyle semiboldText_56 = const TextStyle(
    fontSize: 56.0, // Font-size
    fontWeight: semibold, // Font-weight (Semibold)
    height: 72.0 / 56.0, // Line-height (Tính toán tỷ lệ với font-size)
  );
  static TextStyle semiboldText_28 = const TextStyle(
    fontSize: 28.0, // Font-size
    fontWeight: semibold, // Font-weight (Semibold)
    height: 34.0 / 28.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: -0.12, // Letter-spacing
    color: AppColor.whiteColor,
  );
  static TextStyle semiboldStyle_28 = const TextStyle(
    fontSize: 28.0, // Font-size
    fontWeight: FontWeight.w600, // Font-weight (Semibold)
    height: 34.0 / 28.0, // Line-height (tính theo tỷ lệ với font-size)
    letterSpacing: -0.12, // Letter-spacing
    color: AppColor.whiteColor,
  );

  static TextStyle semiboldStyle_24 = const TextStyle(
    fontSize: 24.0, // Font-size
    fontWeight: FontWeight.w600, // Font-weight (Semibold)
    height: 28.0 / 24.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: -0.1, // Letter-spacing
    color: AppColor.whiteColor,
  );
  static TextStyle semiboldStyle_18 = const TextStyle(
    fontSize: 18.0,
    fontWeight: semibold,
    height: 24.0 / 18.0,
    letterSpacing: -0.04,
    color: AppColor.whiteColor,
  );
  static TextStyle regularText_20 = TextStyle(
    fontSize: 20.0, // Font-size
    fontWeight: FontWeight.w400, // Font-weight (Regular)
    height: 24.0 / 20.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: -0.08, // Letter-spacing
    color: AppColor.grey300, // Màu chữ (tùy chỉnh nếu cần)
  );
  static TextStyle regularStyle_16 = const TextStyle(
    fontSize: 16.0, // Font-size
    fontWeight: FontWeight.w400, // Font-weight (Regular)
    height: 20.0 / 16.0, // Line-height (tính theo tỷ lệ với font-size)
    letterSpacing: 0.0, // Không có letter-spacing
    color: AppColor.whiteColor, // Màu chữ (tùy chỉnh nếu cần)
  );
  static TextStyle regularStyle_12 = const TextStyle(
    fontSize: 12.0, // Font-size
    fontWeight: regular, // Font-weight (Regular)
    height: 14.0 / 12.0, // Line-height (Tính toán tỷ lệ với font-size)
    color: AppColor.whiteColor, // Màu chữ (tùy chỉnh nếu cần)
  );
  static TextStyle mediumStyle_28 = const TextStyle(
    fontSize: 28.0, // Font-size
    fontWeight: medium, // Font-weight (Medium)
    height: 34.0 / 28.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: -0.12, // Letter-spacing
    color: AppColor.whiteColor, // Màu chữ (tùy chỉnh nếu cần)
  );
  static TextStyle semiboldStyle_14 = const TextStyle(
      fontSize: 14.0, // Font-size
      fontWeight: FontWeight.w600, // Font-weight (Semibold)
      height: 18.0 / 14.0, // Line-height (Tính toán tỷ lệ với font-size)
      color: AppColor.whiteColor);

  static TextStyle boldStyle_36 = const TextStyle(
    fontSize: 36.0, // Font-size
    fontWeight: bold, // Font-weight (Bold)
    height: 40.0 / 36.0, // Line-height (Tính toán tỷ lệ với font-size)
    letterSpacing: -0.16, // Letter-spacing
    color: AppColor.whiteColor, // Màu chữ (tùy chỉnh nếu cần)
  );
// Bạn có thể tiếp tục định nghĩa các style khác tương tự
  static TextStyle boldStyle_20 = const TextStyle(
    fontSize: 20.0,
    fontWeight: bold,
    height: 24.0 / 20.0,
    letterSpacing: -0.08,
    color: AppColor.whiteColor,
  );
  static TextStyle boldStyle_12 = const TextStyle(
    fontSize: 12.0, // Font-size
    fontWeight: bold, // Font-weight (Bold)
    height: 14.0 / 12.0, // Line-height (Tính toán tỷ lệ với font-size)
    color: AppColor.whiteColor,
  );

  // Header and description styles
  static TextStyle textHeader = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w600,
  );

  static TextStyle textDescription = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );
  static TextStyle regularStyle_14 = TextStyle(
      fontSize: 14.0, // Font-size
      fontWeight: regular, // Font-weight (Regular)
      height: 18.0 / 14.0, // Line-height (Tính toán tỷ lệ với font-size)
      letterSpacing: 0.0, // Không có letter-spacing (hoặc thêm nếu cần)
      color: AppColor.grey300);

  static TextStyle textTitle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: AppColor.whiteColor,
  );

  static TextStyle textContentScreenHeight700 = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    color: AppColor.grey300,
  );

  // Regular styles
  static TextStyle regular_28 = TextStyle(
    fontSize: 28.0,
    fontWeight: regular,
    color: AppColor.grey300,
  );

  static TextStyle regular_20 = TextStyle(
    fontSize: 20.0,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_18 = TextStyle(
    fontSize: 18.0,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_16 = TextStyle(
    fontSize: 16.0,
    fontWeight: regular,
    color: AppColor.grey300,
  );
  static TextStyle regular_14 = TextStyle(
    fontSize: 14.0,
    fontWeight: regular,
    color: AppColor.grey300,
  );

  static TextStyle regular_12 = TextStyle(
    fontSize: 12.0,
    fontWeight: regular,
    color: AppColor.grey500,
  );

  // Semi-bold styles
  static TextStyle semibold_28 = const TextStyle(
    fontSize: 28.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );
  static TextStyle semibold_24 = const TextStyle(
    fontSize: 24.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_20 = const TextStyle(
    fontSize: 20.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_18 = const TextStyle(
    fontSize: 18.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_16 = const TextStyle(
    fontSize: 16.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );

  static TextStyle semibold_14 = const TextStyle(
    fontSize: 14.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );
  static TextStyle semibold_12 = const TextStyle(
    fontSize: 14.0,
    fontWeight: semibold,
    color: AppColor.whiteColor,
  );
}
