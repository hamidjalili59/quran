import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/config/config.dart';

class MenuItemComponent extends StatelessWidget {
  const MenuItemComponent({
    required this.title,
    this.onTap,
    super.key,
  });

  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7),
      child: GestureDetector(
        onTap: onTap ?? () {},
        child: SizedBox(
          height: 55,
          child: Card(
            elevation: 2,
            margin: EdgeInsets.zero,
            surfaceTintColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(60),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: kNormalTextStyle,
                  ),
                  const Icon(
                    CupertinoIcons.forward,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
