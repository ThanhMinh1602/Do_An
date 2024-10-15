import 'package:do_an_flutter/core/navigation/navigator.dart';
import 'package:flutter/material.dart';

extension BuilderContextExtension on BuildContext {
  AppNavigator get getNavigator => AppNavigator.fromContext(this);
  double get getWidth {
    return MediaQuery.of(this).size.width;
  }

  double get getHeight {
    return MediaQuery.of(this).size.height;
  }

  bool get isDesktop => MediaQuery.of(this).size.width > 700;
}
