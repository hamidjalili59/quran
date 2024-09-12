
import 'package:flutter/material.dart';
import 'package:quran/src/config/config.dart';

class CustomSwitchComponent extends StatefulWidget {
  const CustomSwitchComponent({
    super.key,
    required this.initialValue,
    this.onTap,
  });

  final bool initialValue;
  final Future<void> Function()? onTap;

  @override
  State<CustomSwitchComponent> createState() => _CustomSwitchComponentState();
}

class _CustomSwitchComponentState extends State<CustomSwitchComponent> {
  bool _status = false;

  @override
  void initState() {
    _status = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await widget.onTap?.call().then(
              (value) {
            setState(() {
              _status = !_status;
            });
          },
        );
      },
      child: AnimatedContainer(
        width: 45,
        height: 24,
        duration: Durations.short3,
        decoration: BoxDecoration(
          color: _status ? kPrimaryColor : kOnBackgroundColor,
          borderRadius: BorderRadius.circular(100),
        ),
        child: AnimatedAlign(
          alignment: _status ? Alignment.centerLeft : Alignment.centerRight,
          duration: Durations.short3,
          child: const Padding(
            padding: EdgeInsets.all(2.5),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 10,
            ),
          ),
        ),
      ),
    );
  }
}
