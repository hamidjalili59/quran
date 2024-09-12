import 'package:flutter/material.dart';

class DisabledWidgetComponent extends StatelessWidget {
  const DisabledWidgetComponent(
      {super.key, required this.child, required this.isDisable,});

  final Widget child;
  final bool isDisable;

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: Durations.extralong1,
      opacity: isDisable ? .5 : 1,
      child: child,
    );
  }
}
