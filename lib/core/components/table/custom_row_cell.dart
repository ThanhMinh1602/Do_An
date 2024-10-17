import 'package:flutter/material.dart';

class CustomRowCell extends StatelessWidget {
  final Widget child;
  final double width;
  const CustomRowCell({super.key, required this.child, required this.width});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: SizedBox(
        width: width,
        child: child,
      ),
    );
  }
}
