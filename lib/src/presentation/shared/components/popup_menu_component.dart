import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quran/src/core/core.dart';

class PopupMenuComponent extends StatelessWidget {
  const PopupMenuComponent({
    required this.menuTitles,
    super.key,
    this.buttonColor,
    this.menuIcons,
    this.menuOnTaps,
    this.iconSize = 20,
    this.onOpened,
  })  : assert(
          menuOnTaps != null
              ? menuOnTaps.length == menuTitles.length
              : menuOnTaps == null,
          'There should a match between menu onTaps and menu Texts',
        ),
        assert(
          menuIcons != null
              ? menuIcons.length == menuTitles.length
              : menuIcons == null,
          '',
        );
  final Color? buttonColor;
  final List<String> menuTitles;
  final List<Widget>? menuIcons;
  final List<dynamic Function()>? menuOnTaps;
  final double iconSize;
  final void Function()? onOpened;

  @override
  Widget build(BuildContext context) {
    final popupMenuKey = GlobalKey<PopupMenuButtonState<dynamic>>();
    return PopupMenuButton(
      key: popupMenuKey,
      elevation: 10,
      enableFeedback: true,
      position: PopupMenuPosition.over,
      color: Colors.white,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      tooltip: '',
      splashRadius: 14,
      icon: const Icon(
        CupertinoIcons.ellipsis_vertical,
        color: Colors.grey,
      ),
      iconSize: iconSize,
      onOpened: onOpened,
      itemBuilder: (_) => List<PopupMenuItem<dynamic>>.generate(
        menuTitles.length,
        (index) {
          return PopupMenuItem(
            value: menuTitles[index],
            onTap: () async {
              (menuOnTaps![index])();
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (menuIcons != null &&
                    menuIcons!.length == menuTitles.length) ...[
                  menuIcons![index],
                  const SizedBox(width: 10),
                ],
                Text(
                  menuTitles[index],
                  style: context.theme.textTheme.bodySmall,
                ),
                const SizedBox(width: 30),
              ],
            ),
          );
        },
      ),
    );
  }
}
