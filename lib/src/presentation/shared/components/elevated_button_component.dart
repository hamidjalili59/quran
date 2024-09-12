import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/core/core.dart';

class ElevatedButtonComponent extends StatelessWidget {
  const ElevatedButtonComponent({
    super.key,
    this.text = '',
    this.isLoading = false,
    this.width,
    this.height = 45,
    this.iconWidget,
    this.backgroundColor,
    this.textColor,
    this.onTap,
  });

  final String text;
  final bool isLoading;
  final double? width;
  final double height;
  final Widget? iconWidget;
  final Color? backgroundColor;
  final Color? textColor;
  final dynamic Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final borderdRadius = BorderRadius.circular(kBorderRadius);
    final decoration = BoxDecoration(
      borderRadius: borderdRadius,
      color: backgroundColor ?? context.theme.colorScheme.primary,
    );

    return SizedBox(
      width: width,
      height: height,
      child: DecoratedBox(
        decoration: decoration,
        child: isLoading
            ? _LoadingWidget(textColor)
            : Material(
                type: MaterialType.transparency,
                child: InkWell(
                  onTap: isLoading ? null : onTap,
                  borderRadius: borderdRadius,
                  child: Center(
                    child: _ButtonContentWidget(
                      text: text,
                      iconWidget: iconWidget,
                      textColor: textColor,
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}

class _ButtonContentWidget extends StatelessWidget {
  const _ButtonContentWidget({
    required this.text,
    required this.iconWidget,
    required this.textColor,
  });

  final String text;
  final Widget? iconWidget;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    final padding = text.isNotEmpty
        ? const EdgeInsets.symmetric(horizontal: 16)
        : EdgeInsets.zero;

    return Padding(
      padding: padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (iconWidget != null) iconWidget!,
          if (iconWidget != null && text.isNotEmpty) const SizedBox(width: 8),
          if (text.isNotEmpty)
            FittedBox(
              child: Text(
                text,
                style: kSmallBoldTextStyle.copyWith(
                  color: textColor ?? Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget(
    this.textColor,
  );

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14),
      child: CupertinoActivityIndicator(color: textColor ?? Colors.white),
    );
  }
}
