import 'dart:ui';

import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';

class ConnectWalletButtonCustom extends StatelessWidget {
  final void Function()? onTap;
  final String iconPath;
  final String text;
  final double? iconWidth;
  final double? iconHeight;
  final EdgeInsets? padding;
  const ConnectWalletButtonCustom({
    super.key,
    this.onTap,
    required this.iconPath,
    required this.text,
    this.iconWidth,
    this.iconHeight,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 100, sigmaY: 100),
        child: OutlineGradientButton(
          onTap: onTap,
          strokeWidth: 1.0,
          radius: Radius.circular(12.0.r),
          padding: padding ??
              EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 12.0.h),
          gradient: AppColor.buildGradient(opacity: 0.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                iconPath,
                width: iconWidth ?? 32.0.w,
                height: iconHeight ?? 32.0.h,
              ),
              Text(
                text,
                style: AppStyle.semibold_16,
              ),
              SizedBox(
                width: iconWidth ?? 32.0.w,
                height: iconHeight ?? 32.0.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
