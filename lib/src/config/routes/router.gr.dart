// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    IntroRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const IntroPage(),
      );
    },
    Authentication.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const UserAuthPage(),
      );
    },
    Verify_code.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const VerificationCodePage(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: HomePage(key: args.key),
      );
    },
    SurahRoute.name: (routeData) {
      final args = routeData.argsAs<SurahRouteArgs>(
          orElse: () => const SurahRouteArgs());
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SurahPage(key: args.key),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home_page',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: '/splash',
        ),
        RouteConfig(
          IntroRoute.name,
          path: '/intro',
        ),
        RouteConfig(
          Authentication.name,
          path: '/user-auth-page',
        ),
        RouteConfig(
          Verify_code.name,
          path: '/verification-code-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home_page',
        ),
        RouteConfig(
          SurahRoute.name,
          path: '/surah_page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [IntroPage]
class IntroRoute extends PageRouteInfo<void> {
  const IntroRoute()
      : super(
          IntroRoute.name,
          path: '/intro',
        );

  static const String name = 'IntroRoute';
}

/// generated route for
/// [UserAuthPage]
class Authentication extends PageRouteInfo<void> {
  const Authentication()
      : super(
          Authentication.name,
          path: '/user-auth-page',
        );

  static const String name = 'Authentication';
}

/// generated route for
/// [VerificationCodePage]
class Verify_code extends PageRouteInfo<void> {
  const Verify_code()
      : super(
          Verify_code.name,
          path: '/verification-code-page',
        );

  static const String name = 'Verify_code';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<HomeRouteArgs> {
  HomeRoute({Key? key})
      : super(
          HomeRoute.name,
          path: '/home_page',
          args: HomeRouteArgs(key: key),
        );

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [SurahPage]
class SurahRoute extends PageRouteInfo<SurahRouteArgs> {
  SurahRoute({Key? key})
      : super(
          SurahRoute.name,
          path: '/surah_page',
          args: SurahRouteArgs(key: key),
        );

  static const String name = 'SurahRoute';
}

class SurahRouteArgs {
  const SurahRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SurahRouteArgs{key: $key}';
  }
}
