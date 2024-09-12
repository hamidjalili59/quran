import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

///
class PageIndexCounterWidget extends ConsumerWidget {
  ///
  const PageIndexCounterWidget({
    required this.index,
    required this.length,
    required this.color,
    super.key,
  });

  final int length;

  ///
  final int index;

  ///
  final Color color;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          length,
          (rowIndex) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                height: 8,
                width: rowIndex == index ? 22 : 8,
                decoration: BoxDecoration(
                  color: index == rowIndex ? color : Colors.white,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
