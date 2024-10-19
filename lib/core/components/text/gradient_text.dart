import 'package:do_an_flutter/core/constants/app_color.dart';
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  final String text;
  final Gradient gradient;
  final TextStyle style;
  final TextAlign? textAlign;

  const GradientText({
    super.key,
    required this.text,
    required this.gradient,
    this.style = const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        textAlign: textAlign ?? TextAlign.center,
        text,
        maxLines: 44,
        style: style.copyWith(color: Colors.white, shadows: [
          Shadow(
            color: AppColor.c_DC349E.withOpacity(0.5),
            offset: const Offset(0, 4),
            blurRadius: 30,
          ),
        ]),
      ),
    );
  }
}
