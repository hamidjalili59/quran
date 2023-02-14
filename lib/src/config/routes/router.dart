import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/peresentation/auth/pages/user_auth_page.dart';
import 'package:quran/src/peresentation/auth/pages/verification_code_page.dart';
import 'package:quran/src/peresentation/home/pages/home_page.dart';
import 'package:quran/src/peresentation/intro/page/intro_page.dart';
import 'package:quran/src/peresentation/splash/pages/splash_page.dart';
import 'package:quran/src/peresentation/surah/pages/surah_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(replaceInRouteName: 'Page,Route', routes: <AutoRoute>[
  AutoRoute(
    path: "/splash",
    page: SplashPage,
  ),
  AutoRoute(path: "/intro", page: IntroPage),
  AutoRoute(
    name: "authentication",
    page: UserAuthPage,
  ),
  AutoRoute(name: "verify_code", page: VerificationCodePage),
  AutoRoute(
    path: "/home_page",
    page: HomePage,
    initial: true,
  ),
  AutoRoute(
    path: "/surah_page",
    page: SurahPage,
  ),
])
class AppRouter extends _$AppRouter {}
