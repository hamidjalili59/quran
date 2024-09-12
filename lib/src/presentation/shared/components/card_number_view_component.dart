import 'package:flutter/material.dart';

class CardNumberViewComponent extends StatelessWidget {
  const CardNumberViewComponent({
    super.key,
    required this.cardNumber,
    required this.style,
    this.spacing,
  });

  final String cardNumber;
  final double? spacing;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: cardNumber.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, charIndex) => Padding(
          padding: EdgeInsetsDirectional.only(
            end: (charIndex + 1) % 4 == 0 ? 8 : 0,
          ),
          child: SizedBox(
            width: spacing ?? 11,
            child: Center(
              child: Text(
                cardNumber[charIndex],
                style: style,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
