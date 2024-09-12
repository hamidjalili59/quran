import 'package:flutter/material.dart';
import 'package:quran/src/config/config.dart';

class ButtonWithBottonBorderComponent extends StatelessWidget {
  const ButtonWithBottonBorderComponent({
    super.key,
    this.width,
    required this.child,
    this.height,
    this.onTap,
  });

  final double? width;
  final double? height;
  final Widget child;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: width ?? 170,
        height: height ?? 70,
        child: Stack(
          children: [
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: const Color(0xff7E6DB5),
                  border: Border.all(
                    color: const Color(0xffBaAAEe),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            Positioned.fill(
              bottom: 8,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: kPrimaryGradient,
                  border: Border.all(
                    color: const Color(0xffBaAAEe),
                    width: 4,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
