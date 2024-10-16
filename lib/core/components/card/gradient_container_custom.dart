import 'dart:ui';

import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class GradientContainerCustom extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? blur;
  final BoxBorder? border;
  final Gradient? gradient;
  final Gradient? borderGradient;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;

  const GradientContainerCustom({
    super.key,
    required this.child,
    this.width,
    this.borderRadius,
    this.blur,
    this.gradient,
    this.borderGradient,
    this.padding,
    this.height,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(12.0.r),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur ?? 0, sigmaY: blur ?? 0),
        child: Container(
          padding: padding,
          width: width,
          height: height,
          decoration: BoxDecoration(
              border: border ??
                  GradientBoxBorder(
                    gradient:
                        borderGradient ?? AppColor.buildGradient(opacity: 0.1),
                  ),
              borderRadius: borderRadius ?? BorderRadius.circular(12.0.r),
              gradient: gradient ?? AppColor.buildGradient(opacity: 0.1)),
          child: child,
        ),
      ),
    );
  }
}
