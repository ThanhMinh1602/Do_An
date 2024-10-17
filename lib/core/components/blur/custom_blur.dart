import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBlur extends StatelessWidget {
  final Widget child;
  final double blur;
  const CustomBlur({super.key, required this.child, required this.blur});

  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur / 2, sigmaY: blur / 2),
        child: child,
      ),
    );
  }
}
