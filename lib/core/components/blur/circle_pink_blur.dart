import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class CirclePinkBlur extends StatelessWidget {
  final double top;
  final double? right;
  final double? blur;
  final double? width;
  final double? height;
  const CirclePinkBlur(
      {super.key,
      required this.top,
      this.right,
      this.blur,
      this.width,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right ?? -256.0,
      child: CircleGradientBlur(
        blur: blur ?? 700,
        width: width ?? 512.0,
        height: height ?? 512.0,
        colors: const [
          AppColor.c_DC349E,
          AppColor.c_DC349E,
        ],
      ),
    );
  }
}
