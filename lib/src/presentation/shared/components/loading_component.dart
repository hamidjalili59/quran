import 'package:flutter/material.dart';
import 'package:quran/src/config/gen/assets.gen.dart';

class LoadingComponent extends StatefulWidget {
  const LoadingComponent({super.key});

  @override
  State<LoadingComponent> createState() => _LoadingComponentState();
}

class _LoadingComponentState extends State<LoadingComponent> {
  @override
  Widget build(BuildContext context) {
    return Assets.animations.loading.lottie(height: 150);
  }
}
