import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum CustomTransitionType { leftToRight, rightToLeft }

class CustomTransitions {
  static CustomTransitionPage<dynamic> go(GoRouterState state,
      {required Widget page,
      CustomTransitionType type = CustomTransitionType.rightToLeft}) {
    Offset begin;
    switch (type) {
      case CustomTransitionType.leftToRight:
        begin = const Offset(-1.0, 0.0);
        break;
      case CustomTransitionType.rightToLeft:
        begin = const Offset(1.0, 0.0);
        break;
    }

    const end = Offset.zero;
    const curve = Curves.easeInOut;
    final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

    return CustomTransitionPage(
      key: state.pageKey,
      child: page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        final offsetAnimation = animation.drive(tween);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
