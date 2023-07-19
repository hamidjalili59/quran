import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/peresentation/auth/pages/user_auth_page.dart';
import 'package:quran/src/peresentation/home/pages/home_page.dart';
import 'package:quran/src/peresentation/intro/page/intro_page.dart';
import 'package:quran/src/peresentation/splash/pages/splash_page.dart';
import 'package:quran/src/peresentation/surah/pages/surah_page.dart';

part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends _$AppRouter {
  @override
  final List<AutoRoute> routes = <AutoRoute>[
    AutoRoute(
      path: "/",
      page: Splash.page,
      initial: true,
    ),
    AutoRoute(
      path: "/intro",
      page: Intro.page,
    ),
    // AutoRoute(
    //   path: "/home1",
    //   page: Home1.page,
    // ),
    CustomRoute(
      path: "/home",
      page: Home.page,
      durationInMilliseconds: 1500,
      transitionsBuilder: TransitionsBuilders.fadeIn,
    ),
    // AutoRoute(
    //   path: "/home",
    //   page: Home.page,
    // ),
    AutoRoute(
      path: "/auth",
      page: Auth.page,
    ),
    AutoRoute(
      path: "/surah",
      page: Surah_masir.page,
    ),
  ];
}
