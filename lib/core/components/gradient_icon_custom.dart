import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GradientIconCustom extends StatelessWidget {
  final String iconPath;
  final double? width;
  final double? height;
  final EdgeInsetsGeometry? padding;
  const GradientIconCustom({
    super.key,
    required this.iconPath,
    this.width,
    this.height,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width ?? 52.0.w,
        height: height ?? 52.0.w,
        padding: padding ?? EdgeInsets.all(12.0.w),
        decoration: BoxDecoration(
            gradient: AppColor.buildGradient(),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 4),
                  blurRadius: 24.0.r,
                  spreadRadius: 0,
                  color: AppColor.c_DC349E.withOpacity(0.5))
            ],
            borderRadius: BorderRadius.circular(100.0.r)),
        child: SvgPicture.asset(
          iconPath,
        ),
      ),
    );
  }
}
