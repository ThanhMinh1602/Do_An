import 'dart:ui';

import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:do_an_flutter/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleGradientBlur extends StatelessWidget {
  final double? width;
  final double? height;
  final double? blur;
  final List<Color>? colors;
  const CircleGradientBlur({
    super.key,
    this.width,
    this.height,
    this.colors,
    this.blur = 80,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      enabled: true,
      imageFilter: ImageFilter.blur(
        sigmaX: blur! / 2,
        sigmaY: blur! / 2,
        tileMode: TileMode.decal,
      ),
      child: Container(
        width: width ?? 220.w,
        height: height ?? 220.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: colors ??
                [
                  AppColor.c_DC349E.withOpacity(1),
                  AppColor.c_31D0D0.withOpacity(1),
                ],
            stops: const [0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
