// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    Auth.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const UserAuthPage(),
      );
    },
    Home.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    Intro.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const IntroPage(),
      );
    },
    Splash.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    Surah_masir.name: (routeData) {
      final args = routeData.argsAs<Surah_masirArgs>(
          orElse: () => const Surah_masirArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SurahPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [UserAuthPage]
class Auth extends PageRouteInfo<void> {
  const Auth({List<PageRouteInfo>? children})
      : super(
          Auth.name,
          initialChildren: children,
        );

  static const String name = 'Auth';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomePage]
class Home extends PageRouteInfo<void> {
  const Home({List<PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [IntroPage]
class Intro extends PageRouteInfo<void> {
  const Intro({List<PageRouteInfo>? children})
      : super(
          Intro.name,
          initialChildren: children,
        );

  static const String name = 'Intro';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SplashPage]
class Splash extends PageRouteInfo<void> {
  const Splash({List<PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SurahPage]
class Surah_masir extends PageRouteInfo<Surah_masirArgs> {
  Surah_masir({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          Surah_masir.name,
          args: Surah_masirArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'Surah_masir';

  static const PageInfo<Surah_masirArgs> page = PageInfo<Surah_masirArgs>(name);
}

class Surah_masirArgs {
  const Surah_masirArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'Surah_masirArgs{key: $key}';
  }
}
