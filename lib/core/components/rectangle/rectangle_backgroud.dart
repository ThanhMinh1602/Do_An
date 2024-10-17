import 'dart:math'; // Để xoay góc
import 'package:flutter/material.dart';

class RectangleBackgroud extends StatelessWidget {
  const RectangleBackgroud({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 22 * pi / -180,
      child: Row(
        children: [
          Container(
            width: 2861.33,
            height: 590.22,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.02)),
          ),
        ],
      ),
    );
  }
}
