// ignore: unused_element
import 'dart:ui';

import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class RectangleBlur extends StatelessWidget {
  final double? width;
  final double? height;
  const RectangleBlur({super.key, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -20 * 3.141592653589793 / 180,
      child: SizedBox(
        width: width ?? 1082.29,
        height: height ?? 375.3,
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 70, sigmaY: 70),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  AppColor.whiteColor.withOpacity(0.05),
                  AppColor.whiteColor.withOpacity(0.01),
                ]),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
