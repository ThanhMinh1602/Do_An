import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class CircleBlueBlur extends StatelessWidget {
  final double top;
  final double? left;
  final double? width;
  final double? height;
  const CircleBlueBlur(
      {super.key, required this.top, this.left, this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left ?? -256.0,
      child: CircleGradientBlur(
        sigmaX: 200,
        sigmaY: 200,
        width: width ?? 512.0,
        height: height ?? 512.0,
        colors: [
          AppColor.primaryColor.withOpacity(0.5),
          AppColor.primaryColor.withOpacity(0.5),
        ],
      ),
    );
  }
}
