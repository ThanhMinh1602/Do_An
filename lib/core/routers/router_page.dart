import 'package:do_an_flutter/core/routers/router_config.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/page/loading_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: Routes.homePage,
  routes: [
    GoRoute(
      path: Routes.homePage,
      builder: (context, state) => const LoadingPage(),
    )
  ],
);
