import 'package:flutter/material.dart';
import 'package:quran/src/core/core.dart';


part 'colors.dart';
part 'text_sizes.dart';
part 'text_styles.dart';

mixin AppThemes {
  ///Light theme
  static ThemeData get light {
    final appBarTheme = AppBarTheme(
      backgroundColor: colorScheme.surface,
      elevation: 0,
      surfaceTintColor: colorScheme.surface,
      toolbarHeight: kAppbarHeight,
      centerTitle: true,
    );
    const iconButtonTheme = IconButtonThemeData(
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        padding: WidgetStatePropertyAll(EdgeInsets.zero),
        visualDensity: VisualDensity.compact,
        splashFactory: NoSplash.splashFactory,
      ),
    );
    final checkboxTheme = CheckboxThemeData(
      splashRadius: 0,
      visualDensity: VisualDensity.compact,
      checkColor: WidgetStateProperty.all(Colors.white),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      side: const BorderSide(color: Colors.grey),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
    );

    return ThemeData(
      scaffoldBackgroundColor: kBackgroundColor,
      highlightColor: Colors.white12,
      splashColor: Colors.white12,
      fontFamily: kFont,
      colorScheme: colorScheme,
      appBarTheme: appBarTheme,
      iconButtonTheme: iconButtonTheme,
      checkboxTheme: checkboxTheme,
    );
  }
}
