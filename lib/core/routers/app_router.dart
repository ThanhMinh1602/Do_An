import 'package:do_an_flutter/core/routers/custom_transitions.dart';
import 'package:do_an_flutter/features/loadingpage/presentation/page/loading_page.dart';
import 'package:do_an_flutter/features/news/presentation/page/news_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String homePage = '/home';
  static const String newsPage = '/news';

  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: homePage,
    observers: [HeroController()],
    routes: [
      GoRoute(
        path: homePage,
        pageBuilder: (context, state) =>
            CustomTransitions.go(state, page: const LoadingPage()),
      ),
      GoRoute(
        path: newsPage,
        pageBuilder: (context, state) {
          return CustomTransitions.go(state, page: const NewsPage());
        },
      ),
    ],
  );
}
