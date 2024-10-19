import 'package:do_an_flutter/core/components/blur/circle_blue_blur.dart';
import 'package:do_an_flutter/core/components/blur/circle_pink_blur.dart';
import 'package:do_an_flutter/core/extensions/builder_context_extension.dart';
import 'package:flutter/material.dart';

class BackgroundCustom extends StatelessWidget {
  final Widget child;
  const BackgroundCustom({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleBlueBlur(top: context.getHeight * -0.4),
        CirclePinkBlur(top: context.getHeight * 0.4),
        Positioned.fill(child: child),
      ],
    );
  }
}
