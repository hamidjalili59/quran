import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/core/core.dart';

class AppHelper {
  AppHelper();




  Future<void> displayBottomSheet(
    BuildContext context, {
    required Widget child,
    bool isDismissible = false,
    bool enableDrag = false,
  }) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      isDismissible: isDismissible,
      enableDrag: enableDrag,
      elevation: 10,
      showDragHandle: false,
      builder: (_) => child,
    );
  }

  Future<T?> displayDialog<T>(
    BuildContext context, {
    required Widget child,
    bool isDismissible = false,
  }) async {
    return showDialog<T>(
      context: context,
      barrierDismissible: isDismissible,
      builder: (_) => Material(
        type: MaterialType.transparency,
        child: AlertDialog(
          elevation: 10,
          insetPadding: EdgeInsets.zero,
          contentPadding: EdgeInsets.zero,
          content: child,
        ),
      ),
    );
  }

  String humanReadableDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    final twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds'
        .toPersianString();
  }

  void setSystemUIOverlayStyle([
    Brightness brightness = Brightness.light,
  ]) {
    if (!kIsWeb) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: brightness,
          statusBarIconBrightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          systemNavigationBarIconBrightness: brightness == Brightness.light
              ? Brightness.dark
              : Brightness.light,
          systemNavigationBarContrastEnforced: brightness == Brightness.light,
          systemStatusBarContrastEnforced: brightness == Brightness.light,
          systemNavigationBarColor: brightness == Brightness.light
              ? kBackgroundColor
              : Colors.black38,
          statusBarColor: brightness == Brightness.light
              ? kBackgroundColor
              : Colors.black38,
        ),
      );
    }
  }

  void closeSoftKeyboard(BuildContext context) {
    context.focusScope.unfocus();
  }
}
