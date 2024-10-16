import 'package:do_an_flutter/core/components/blur/circle_gradient_blur.dart';
import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class CirclePinkBlur extends StatelessWidget {
  final double top;
  const CirclePinkBlur({super.key, required this.top});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: -256.0,
      child: CircleGradientBlur(
        sigmaX: 200,
        sigmaY: 200,
        width: 512.0,
        height: 512.0,
        colors: [
          AppColor.c_DC349E.withOpacity(0.5),
          AppColor.c_DC349E.withOpacity(0.5),
        ],
      ),
    );
  }
}
