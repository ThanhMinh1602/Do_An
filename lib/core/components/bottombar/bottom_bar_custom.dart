import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomBarCustom extends StatelessWidget {
  final Widget child;
  final double? height;
  final EdgeInsetsGeometry? padding;
  const BottomBarCustom({
    super.key,
    required this.child,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.symmetric(horizontal: 24.w).copyWith(top: 16.0.h),
      width: double.infinity,
      color: AppColor.backgroundColor,
      height: height ?? 132.h,
      child: child,
    );
  }
}
