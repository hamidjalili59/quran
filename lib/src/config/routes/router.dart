import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quran/src/core/constants/route_constants.dart';
import 'package:quran/src/presentation/home/pages/home_page.dart';
import 'package:quran/src/presentation/splash/pages/splash_page.dart';
import 'package:quran/src/presentation/surah/pages/surah_page.dart';

/// this class used for navigating in application
class AppRouter {
  ///
  GoRouter get router => _router;

  final GoRouter _router = GoRouter(
    routes: <RouteBase>[
      _routeFadeIn(
        name: splashRoute,
        path: splashRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const SplashPage(),
      ),
      _routeFadeIn(
        name: homeRoute,
        path: homeRoute,
        duration: Durations.short1,
        pageBuilder: (state) => const HomePage(),
        routes: [
          _routeFadeIn(
            name: surahRoute,
            path: surahRoute,
            duration: Durations.short1,
            pageBuilder: (state) {
              final surahNumber =
                  int.parse(state.pathParameters['surahNumber'] ?? '0');
              return SurahPage(surahNumber: surahNumber);
            },
          ),
        ],
      ),
    ],
  );
}

GoRoute _routeFadeIn({
  required String name,
  required String path,
  required Duration duration,
  required Widget Function(GoRouterState state) pageBuilder,
  List<GoRoute> routes = const [],
}) =>
    GoRoute(
      name: name,
      path: path,
      routes: routes,
      pageBuilder: (context, state) => CustomTransitionPage(
        child: pageBuilder(state),
        transitionDuration: duration,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    );
