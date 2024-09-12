import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/config/gen/assets.gen.dart';
import 'package:quran/src/core/core.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/injection/main_modules_providers.dart';
import 'package:quran/src/presentation/shared/components/loading_component.dart';
import 'package:quran/src/presentation/shared/components/page_decorator.dart';
import 'package:quran/src/presentation/surah/logic/ayah_audio_logic.dart';
import 'package:quran/src/presentation/surah/logic/surah_logic.dart';
import 'package:quran/src/presentation/surah/logic/sync_text_and_audio_logic.dart';
import 'package:quran/src/presentation/surah/widgets/ayah_voice_widget.dart';

class SurahPage extends ConsumerStatefulWidget {
  const SurahPage({super.key, required this.surahNumber});
  final int surahNumber;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SurahPageState();
}

class _SurahPageState extends ConsumerState<SurahPage> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized().addPostFrameCallback(
      (timeStamp) async {
        await ref
            .read(surahLogicProvider.notifier)
            .fetchSurah(widget.surahNumber);
        await ref
            .read(surahTranslateLogicProvider.notifier)
            .fetchSurah(widget.surahNumber);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(audioServiceProvider, (previous, next) async {
      if (previous?.value?.state != next.value?.state &&
          next.value!.surah!.name ==
              ref.watch(surahLogicProvider).value?.name) {
        await next.maybeWhen(
          orElse: () {},
          data: (data) async {
            if (data.state.isCompleted()) {
              if (ref.watch(currentAyahNumberProvider) <
                  next.value!.surah!.numberOfAyahs! - 1) {
                ref
                    .read(currentAyahNumberProvider.notifier)
                    .setAyahNumber(ref.watch(currentAyahNumberProvider) + 1);
              }
              await Future.delayed(Durations.medium1);
            }
          },
        );
      }
    });
    return PageDecorator(
      hasPadding: false,
      hasSingleChildScrollView: false,
      body: Stack(
        children: [
          const Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(gradient: kBackgroundGradient),
            ),
          ),
          Positioned.fill(
            child: ref.watch(surahLogicProvider).maybeWhen(
                  orElse: () => const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LoadingComponent(),
                    ],
                  ),
                  data: (data) =>
                      ref.watch(surahTranslateLogicProvider).maybeWhen(
                            orElse: () => const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LoadingComponent(),
                              ],
                            ),
                            data: (translate) => SurahPageViewWidget(
                              surah: data,
                              translate: translate,
                            ),
                          ),
                ),
          ),
        ],
      ),
    );
  }
}

class SurahPageViewWidget extends ConsumerWidget {
  const SurahPageViewWidget({
    required this.surah,
    required this.translate,
    super.key,
  });
  final Surah surah;
  final Surah translate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Stream<double> audioProgress() {
      final player = ref.watch(audioPlayerProvider);
      return player.positionStream.map((position) {
        final duration = player.duration;
        if (duration == null) return 0.0;
        return position.inMilliseconds / duration.inMilliseconds;
      });
    }

    return SizedBox(
      width: context.deviceWidthFactor(1),
      height: context.deviceHeightFactor(1),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: buildProgressIndicator(
              surah.numberOfAyahs ?? 1,
              ref.watch(currentAyahNumberProvider),
            ),
          ),
          Positioned(
            bottom: context.deviceHeightFactor(.2),
            right: 0,
            left: 0,
            top: 0,
            child: Column(
              children: [
                SizedBox(
                  height: 350,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: context.deviceWidthFactor(.85),
                        maxWidth: context.deviceWidthFactor(.855),
                        minHeight: 10,
                        maxHeight: 250,
                      ),
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: SingleChildScrollView(
                        child: Text(
                          surah.ayahs?[ref.watch(currentAyahNumberProvider)]
                                  .text ??
                              '',
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          style: const TextStyle(
                            color: Colors.white,
                            height: 1.8,
                            fontSize: 22,
                            fontFamily: 'AlQalamNew',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  child: Align(
                    child: Container(
                      constraints: BoxConstraints(
                        minWidth: context.deviceWidthFactor(.85),
                        maxWidth: context.deviceWidthFactor(.855),
                        minHeight: 10,
                        maxHeight: 250,
                      ),
                      decoration: const BoxDecoration(color: Colors.black12),
                      child: SingleChildScrollView(
                        child: Text(
                          translate.ayahs?[ref.watch(currentAyahNumberProvider)]
                                  .text ??
                              '',
                          textAlign: TextAlign.justify,
                          textDirection: TextDirection.rtl,
                          style: kMediumBoldTextStyle.copyWith(
                            color: Colors.white70,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: GestureDetector(
              onTapUp: (TapUpDetails details) {
                if (details.globalPosition.dx < context.deviceWidthFactor(.5)) {
                  if (ref.watch(currentAyahNumberProvider) >= 1) {
                    ref.read(currentAyahNumberProvider.notifier).setAyahNumber(
                          ref.watch(currentAyahNumberProvider) - 1,
                        );
                  }
                } else {
                  if (ref.watch(currentAyahNumberProvider) <
                      surah.numberOfAyahs! - 1) {
                    ref.read(currentAyahNumberProvider.notifier).setAyahNumber(
                          ref.watch(currentAyahNumberProvider) + 1,
                        );
                  } else {
                    context.pop();
                  }
                }
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: context.deviceHeightFactor(.15),
            child: Column(
              children: [
                SizedBox(
                  width: context.deviceWidthFactor(.6),
                  child: AyahVoiceWidget(
                    link: surah
                        .ayahs?[ref.watch(currentAyahNumberProvider)].audio,
                    ayahNumber: ref.watch(currentAyahNumberProvider),
                    surah: surah,
                    translate: translate,
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  height: 32,
                  width: 250,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Assets.pngs.waveForm.image(fit: BoxFit.fill),
                      ),
                      Positioned.fill(
                        child: StreamBuilder<double>(
                          stream: audioProgress(),
                          builder: (context, snapshot) {
                            return ClipPath(
                              clipper: WaveformClipper(
                                progress: snapshot.data ?? 0,
                              ),
                              child: Assets.pngs.waveForm
                                  .image(fit: BoxFit.fill, color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: -115,
            left: 0,
            right: 0,
            child: SizedBox(
              width: context.deviceWidthFactor(1),
              height: 220,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 95,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Assets.pngs.abdolbaset.image(),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 95,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Assets.pngs.a1.image(),
                        ),
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: 95,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Assets.pngs.minshawi.image(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildProgressIndicator(int totalAyahs, int currentAyah) {
  final numCubes = totalAyahs > 35 ? 35 : totalAyahs;

// Normalize current ayah to a number between 0 and 35
  final normalizedCurrentAyah = ((currentAyah / totalAyahs) * 35).round();
  final progressIndicators = List<Widget>.generate(numCubes, (index) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 1),
        height: 2,
        decoration: BoxDecoration(
          color: totalAyahs > 35
              ? index < normalizedCurrentAyah
                  ? Colors.white
                  : Colors.white30
              : index < currentAyah
                  ? Colors.white
                  : Colors.white30,
          borderRadius: BorderRadius.circular(2),
        ),
      ),
    );
  });

  return Row(children: progressIndicators);
}

class WaveformClipper extends CustomClipper<Path> {
  final double progress;

  WaveformClipper({required this.progress});

  @override
  Path getClip(Size size) {
    final path = Path();
    path.addRect(
      Rect.fromLTWH(size.width * progress, 0, size.width, size.height),
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
