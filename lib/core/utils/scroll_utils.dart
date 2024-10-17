import 'package:flutter/material.dart';

class ScrollUtils {
  static void autoScroll(ScrollController controller,
      {double scrollStep = 10.0,
      Duration duration = const Duration(milliseconds: 200)}) {
    if (controller.hasClients) {
      double maxScrollExtent = controller.position.maxScrollExtent;
      double currentScrollPosition = controller.position.pixels;

      if (currentScrollPosition >= maxScrollExtent) {
        controller.jumpTo(0.0);
      } else {
        controller.animateTo(
          currentScrollPosition + scrollStep,
          duration: duration,
          curve: Curves.linear,
        );
      }
    }
  }
}
