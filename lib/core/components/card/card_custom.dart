import 'dart:ui';

import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:do_an_flutter/core/utils/spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class CardCustom extends StatelessWidget {
  final String title;
  final String content;
  final TextStyle? titleStyle;
  final TextStyle? contentStyle;

  final String? image;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? imageWidth;
  final double? imageHeight;
  final double? width;
  final double? height;
  final double? blur;
  final double? titleContentSpace;

  const CardCustom({
    super.key,
    required this.title,
    required this.content,
    this.titleStyle,
    this.contentStyle,
    this.image,
    this.margin,
    this.imageWidth,
    this.imageHeight,
    this.width,
    this.height,
    this.blur = 100,
    this.titleContentSpace,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: width,
          height: height,
          margin: margin ?? EdgeInsets.only(top: 20.h),
          decoration: BoxDecoration(
            border: GradientBoxBorder(
              width: 1.0,
              gradient: AppColor.buildGradient(opacity: 0.2),
            ),
            borderRadius: BorderRadius.circular(16.0.r),
            gradient: AppColor.buildGradient(opacity: 0.1),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0.r),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: blur! / 2, sigmaY: blur! / 2),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0.r),
                  color: Colors.transparent,
                ),
                padding: padding ??
                    EdgeInsets.symmetric(vertical: 32.0.h, horizontal: 16.0.w),
                child: Column(
                  crossAxisAlignment: image != null && image!.isNotEmpty
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.center,
                  children: [
                    if (image != null && image!.isNotEmpty)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(3.0.r),
                          child: Image.asset(
                            image!,
                            width: imageWidth ?? 68.8.w,
                            height: imageHeight ?? 48.0.h,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    if (image != null && image!.isNotEmpty) spaceH12,
                    Align(
                      alignment: (image != null && image!.isNotEmpty)
                          ? Alignment.centerLeft
                          : Alignment.center,
                      child: Text(
                        textAlign: (image != null && image!.isNotEmpty)
                            ? TextAlign.start
                            : TextAlign.center,
                        title,
                        style: titleStyle ?? AppStyle.textTitle,
                      ),
                    ),
                    SizedBox(height: titleContentSpace ?? 8.0.h),
                    Text(
                      content,
                      textAlign: image != null && image!.isNotEmpty
                          ? TextAlign.start
                          : TextAlign.center,
                      style: contentStyle ?? AppStyle.regular_14,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
