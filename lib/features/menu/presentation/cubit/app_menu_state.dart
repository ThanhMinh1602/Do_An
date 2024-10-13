import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:do_an_flutter/core/routers/app_router.dart';
import 'package:flutter/foundation.dart';

part 'app_menu_state.g.dart';

@CopyWith()
@immutable
class AppMenuState {
  final int index;
  final String routePath;

  const AppMenuState({
    this.index = 0,
    this.routePath = AppRouter.homePage,
  });
}
