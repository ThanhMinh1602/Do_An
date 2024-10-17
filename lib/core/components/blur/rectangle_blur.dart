// ignore: unused_element
import 'dart:ui';

import 'package:flutter/material.dart';

class RectangleBlur extends StatelessWidget {
  final double? width;
  final double? height;
  const RectangleBlur({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: Container(
        width: width ?? 1082.29,
        height: height ?? 375.3,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: const [-0.0436, 0.5582],
            colors: [
              Colors.white.withOpacity(0.05),
              Colors.white.withOpacity(0.01),
            ],
            transform: const GradientRotation(
                20 * (3.141592653589793238 / 180)), // Góc 20 độ
          ),
          borderRadius: BorderRadius.circular(12), // Có thể điều chỉnh nếu cần
        ),
        child: BackdropFilter(
          filter:
              ImageFilter.blur(sigmaX: 114.73 / 2, sigmaY: 114.73 / 2), // Blur
          child: Container(
            color: Colors.transparent, // Giữ cho nền trong suốt
          ),
        ),
      ),
    );
  }
}
