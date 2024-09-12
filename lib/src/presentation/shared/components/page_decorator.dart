import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/core/core.dart';

class PageDecorator extends ConsumerWidget {
  const PageDecorator({
    required this.body,
    super.key,
    this.title,
    this.backgroundColor,
    this.textDirection,
    this.appBar,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.drawer,
    this.scaffoldKey,
    this.bottomSheet,
    this.floatingActionButtonLocation,
    this.checkInternetConnection = true,
    this.hasPadding = true,
    this.hasSingleChildScrollView = true,
  });

  final String? title;
  final Widget body;
  final Color? backgroundColor;
  final TextDirection? textDirection;
  final Widget? appBar;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final Widget? bottomSheet;
  final Widget? drawer;
  final Key? scaffoldKey;
  final bool checkInternetConnection;
  final bool hasPadding;
  final bool hasSingleChildScrollView;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Directionality(
      textDirection: textDirection ?? TextDirection.ltr,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: backgroundColor,
          key: scaffoldKey,
          drawer: drawer,
          floatingActionButtonLocation: floatingActionButtonLocation ??
              FloatingActionButtonLocation.startFloat,
          appBar: appBar != null
              ? PreferredSize(
                  preferredSize: const Size(double.infinity, kAppbarHeight),
                  child: appBar!,
                )
              : null,
          body: hasSingleChildScrollView
              ? SingleChildScrollView(
                  child: Padding(
                    padding: hasPadding
                        ? const EdgeInsets.symmetric(horizontal: kPadding)
                        : EdgeInsets.zero,
                    child: body,
                  ),
                )
              : Padding(
                  padding: hasPadding
                      ? const EdgeInsets.symmetric(horizontal: kPadding)
                      : EdgeInsets.zero,
                  child: body,
                ),
          bottomNavigationBar: bottomNavigationBar,
          floatingActionButton: floatingActionButton,
          bottomSheet: bottomSheet,
        ),
      ),
    );
  }
}
