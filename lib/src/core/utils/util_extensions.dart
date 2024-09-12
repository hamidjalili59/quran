import 'package:flutter/material.dart';
// import 'package:responsive_framework/responsive_framework.dart';

extension ContextUtilsEX on BuildContext {
  ThemeData get theme => Theme.of(this);

  // ResponsiveBreakpointsData get responsive => ResponsiveBreakpoints.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  double deviceWidthFactor(double factor) {
    return (MediaQuery.of(this).size.width * factor).floorToDouble();
  }

  double deviceHeightFactor(double factor) {
    return (MediaQuery.of(this).size.height * factor).floorToDouble();
  }
}

extension StringExtension on String {
  String toPersianString() {
    return replaceAll('0', '۰')
        .replaceAll('1', '۱')
        .replaceAll('2', '۲')
        .replaceAll('3', '۳')
        .replaceAll('4', '۴')
        .replaceAll('5', '۵')
        .replaceAll('6', '۶')
        .replaceAll('7', '۷')
        .replaceAll('8', '۸')
        .replaceAll('9', '۹');
  }
}

extension Round on double {
  int get roundUpAbs => isNegative ? floor() : ceil();
}

extension IntExtensions on int {
  bool toBool() {
    if (this == 0) {
      return false;
    } else {
      return true;
    }
  }
}

extension BoolExtensions on bool {
  int toInt() => this ? 1 : 0;
}
