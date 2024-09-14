import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/injection/main_modules_providers.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger_observer.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final talker = Talker();

  final container = ProviderContainer(
    observers: [
      TalkerRiverpodObserver(
        talker: talker,
      ),
    ],
  );

  await _startupSetup(container);

  runApp(
    UncontrolledProviderScope(
      container: container,
      child: await builder(),
    ),
  );
}

Future<void> _startupSetup(ProviderContainer providerContainer) async {
  WidgetsFlutterBinding.ensureInitialized();
  _errorWidgetBuilder();
  await _setAppOrientations();
  await _setStatusBarTransparent(); // اضافه کردن این خط
  providerContainer.read(appHelperProvider).setSystemUIOverlayStyle();
}

void _errorWidgetBuilder() {
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pinkAccent.withOpacity(.3),
            borderRadius: BorderRadius.circular(12),
          ),
          width: 300,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline_outlined,
                color: Colors.pink,
                size: 80,
              ),
              const SizedBox(height: 10),
              const Text(
                'Error Occurred!',
                style: kHeading5TextStyle,
              ),
              const SizedBox(height: 10),
              Text(
                kReleaseMode
                    ? 'Oops... Something went wrong!'
                    : errorDetails.exception.toString(),
                textAlign: TextAlign.center,
                style: kNormalTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  };
}

Future<void> _setAppOrientations() async {
  await SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
}

// اضافه کردن این تابع جدید
Future<void> _setStatusBarTransparent() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark, // برای آیکون‌های تیره
    // statusBarIconBrightness: Brightness.light, // برای آیکون‌های روشن
  ));
}
