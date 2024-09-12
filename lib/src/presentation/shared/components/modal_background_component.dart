import 'package:flutter/material.dart';
import 'package:quran/src/config/config.dart';

class ModalBackgroundComponent extends StatelessWidget {
  const ModalBackgroundComponent({
    super.key,
    required this.child,
    required this.hasDragIcon,
  });

  final bool hasDragIcon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(.5),
            blurRadius: 36,
          ),
        ],
        border: Border(
          top: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 3,
          ),
        ),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          if (hasDragIcon)
            Padding(
              padding: const EdgeInsets.only(top: 22, bottom: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const ColoredBox(
                  color: kIconColor,
                  child: SizedBox(width: 46, height: 7),
                ),
              ),
            )
          else
            const SizedBox(height: 28),
          child,
        ],
      ),
    );
  }
}
