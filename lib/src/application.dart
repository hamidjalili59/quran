import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/config/l10n/arb/app_localizations.dart';
import 'package:quran/src/injection/main_modules_providers.dart';
import 'package:toastification/toastification.dart';

/// main widget of the app
class Application extends ConsumerWidget {
  /// main widget constructor of the app
  const Application({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ToastificationWrapper(
      child: MaterialApp.router(
          routerConfig: ref.read(appRouterProvider).router,
          debugShowCheckedModeBanner: false,
          theme: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: const Color(0xff000080),
                ),
          ),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          locale: AppLocalizations.supportedLocales.first,
        ),
    );
  }
}
