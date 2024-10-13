import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:flutter/foundation.dart';

part 'app_menu_state.g.dart';

@CopyWith()
@immutable
class AppMenuState {
  final int index;

  const AppMenuState({this.index = 0});
}
