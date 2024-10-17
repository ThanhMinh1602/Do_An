import 'dart:ui';

import 'package:do_an_flutter/core/components/blur/custom_blur.dart';
import 'package:do_an_flutter/core/components/card/gradient_container_custom.dart';
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
  final TextStyle? style;
  const ConnectWalletButtonCustom({
    super.key,
    this.onTap,
    required this.iconPath,
    required this.text,
    this.iconWidth,
    this.iconHeight,
    this.padding,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12.0.r),
      child: CustomBlur(
        blur: 100,
        child: GradientContainerCustom(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColor.whiteColor.withOpacity(0.05),
              AppColor.whiteColor.withOpacity(0.02)
            ],
          ),
          borderGradient: AppColor.buildGradient(opacity: 0.2),
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
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
                style: style ?? AppStyle.semibold_16,
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
