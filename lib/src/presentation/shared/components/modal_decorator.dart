import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/core/core.dart';
import 'package:quran/src/presentation/shared/components/elevated_button_component.dart';
import 'package:quran/src/presentation/shared/components/outlined_button_component.dart';
// import 'package:responsive_framework/responsive_framework.dart';

class ModalDecorator extends ConsumerWidget {
  const ModalDecorator({
    required this.child,
    super.key,
    this.title,
    this.showHeader = false,
    this.showCloseButton = false,
    this.showPrimaryButton = true,
    this.showSecondaryButton = true,
    this.primaryButtonText,
    this.secondaryButtonText,
    this.isLoadingPrimaryButton = false,
    this.isLoadingSecondaryButton = false,
    this.isWideOnDesktop = false,
    this.primaryButtonOnTap,
    this.secondaryButtonOnTap,
  });

  final Widget child;
  final String? title;
  final bool showHeader;
  final bool showCloseButton;
  final bool showPrimaryButton;
  final bool showSecondaryButton;
  final String? primaryButtonText;
  final String? secondaryButtonText;
  final bool isLoadingPrimaryButton;
  final bool isLoadingSecondaryButton;
  final dynamic Function()? primaryButtonOnTap;
  final dynamic Function()? secondaryButtonOnTap;
  final bool isWideOnDesktop;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final maxWidth = context.deviceWidthFactor(1);

    final constraints = BoxConstraints(
      minHeight: 150,
      maxHeight: context.deviceHeightFactor(1),
      minWidth: maxWidth,
      maxWidth: maxWidth,
    );

    final decoration = BoxDecoration(
      color: context.theme.colorScheme.surface,
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(kBottomSheetBorderRadius),
      ),
    );

    return PopScope(
      onPopInvokedWithResult: (_, __) => onPopInvoked(context, ref),
      child: ConstrainedBox(
        constraints: constraints,
        child: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: DecoratedBox(
            decoration: decoration,
            child: Material(
              type: MaterialType.transparency,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ..._headerWidgets(),
                      child,
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (showSecondaryButton) ...[
                            _SecondaryButtonWidget(
                              secondaryButtonText: secondaryButtonText,
                              isLoadingSecondaryButton:
                                  isLoadingSecondaryButton,
                              secondaryButtonOnTap: secondaryButtonOnTap,
                            ),
                            const SizedBox(width: 8),
                          ],
                          if (showPrimaryButton)
                            _PrimaryButtonWidget(
                              primaryButtonText: primaryButtonText,
                              isLoadingPrimaryButton: isLoadingPrimaryButton,
                              primaryButtonOnTap: () {
                                if (isLoadingPrimaryButton) {
                                  return;
                                }
                                primaryButtonOnTap?.call();
                              },
                            ),
                        ],
                      ),
                      if (showPrimaryButton || showSecondaryButton)
                        const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> onPopInvoked(BuildContext context, WidgetRef ref) async {}

  List<Widget> _headerWidgets() {
    if (showHeader) {
      return [
        Row(
          children: [
            if (showCloseButton) ...[
              const _CloseButtonWidget(),
              const SizedBox(width: 8),
            ],
            if (title != null) _TitleWidget(title: title),
          ],
        ),
        const Divider(
          height: 35,
          thickness: 1,
          color: kDividerColor,
        ),
      ];
    }
    return <Widget>[];
  }
}

class _SecondaryButtonWidget extends StatelessWidget {
  const _SecondaryButtonWidget({
    required this.secondaryButtonText,
    required this.isLoadingSecondaryButton,
    required this.secondaryButtonOnTap,
  });

  final String? secondaryButtonText;
  final bool isLoadingSecondaryButton;
  final dynamic Function()? secondaryButtonOnTap;

  @override
  Widget build(BuildContext context) {
    final width = context.deviceWidthFactor(0.3);
    return OutlinedButtonComponent(
      text: secondaryButtonText ?? '',
      width: width,
      height: 40,
      hasBorder: false,
      isLoading: isLoadingSecondaryButton,
      onTap: secondaryButtonOnTap ?? () => context.pop(),
    );
  }
}

class _PrimaryButtonWidget extends StatelessWidget {
  const _PrimaryButtonWidget({
    required this.primaryButtonText,
    required this.isLoadingPrimaryButton,
    required this.primaryButtonOnTap,
  });

  final String? primaryButtonText;
  final bool isLoadingPrimaryButton;
  final dynamic Function()? primaryButtonOnTap;

  @override
  Widget build(BuildContext context) {
    final width = context.deviceWidthFactor(0.3);

    return ElevatedButtonComponent(
      text: primaryButtonText ?? '',
      width: width,
      isLoading: isLoadingPrimaryButton,
      onTap: () {
        if (primaryButtonOnTap != null) {
          primaryButtonOnTap!.call();
        }
      },
    );
  }
}

class _CloseButtonWidget extends StatelessWidget {
  const _CloseButtonWidget();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.pop(),
      padding: EdgeInsets.zero,
      visualDensity: VisualDensity.compact,
      splashRadius: 18,
      icon: const Icon(
        Icons.close_rounded,
        color: Colors.black45,
        size: 18,
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  const _TitleWidget({
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Text(
        title!,
        style: kNormalBoldTextStyle,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),
    );
  }
}
