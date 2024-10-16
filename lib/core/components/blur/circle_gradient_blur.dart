import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleGradientBlur extends StatelessWidget {
  final double? width;
  final double? height;
  final double? sigmaX;
  final double? sigmaY;
  final List<Color>? colors;
  const CircleGradientBlur({
    super.key,
    this.width,
    this.height,
    this.sigmaX,
    this.sigmaY,
    this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      enabled: true,
      imageFilter: ImageFilter.blur(
        sigmaX: sigmaX ?? 80.0,
        sigmaY: sigmaY ?? 80.0,
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
                  Colors.purpleAccent,
                  Colors.blueAccent,
                ],
          ),
        ),
      ),
    );
  }
}
