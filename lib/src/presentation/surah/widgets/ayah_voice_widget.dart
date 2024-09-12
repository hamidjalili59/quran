import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/presentation/surah/logic/ayah_audio_logic.dart';

class AyahVoiceWidget extends ConsumerWidget {
  const AyahVoiceWidget({
    required this.link,
    super.key,
    this.ayahNumber,
    this.surah,
    this.translate,
  });
  final String? link;
  final int? ayahNumber;
  final Surah? surah;
  final Surah? translate;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 54,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.skip_previous_rounded,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () async => await ref
                .read(audioServiceProvider.notifier)
                .previousNextAyah(),
          ),
          if (ref.watch(audioServiceProvider).isLoading)
            const Padding(
              padding: EdgeInsets.only(bottom: 14),
              child: SizedBox(
                height: 18,
                width: 18,
                child: CircularProgressIndicator(
                  color: Colors.white,
                  strokeCap: StrokeCap.round,
                ),
              ),
            )
          else
            IconButton(
              icon: Icon(
                ref.watch(audioServiceProvider).maybeWhen(
                      orElse: () => Icons.stop_rounded,
                      loading: () => Icons.circle_outlined,
                      data: (data) {
                        if (data.state == AudioServiceState.playing ||
                            data.state == AudioServiceState.completed) {
                          return Icons.stop_rounded;
                        } else {
                          return Icons.play_arrow_rounded;
                        }
                      },
                    ),
                color: Colors.white,
                size: 32,
              ),
              onPressed: () async {
                if (link == null) return;
                ref.watch(audioServiceProvider).maybeWhen(
                  orElse: () async {
                    await ref.read(audioServiceProvider.notifier).play(
                          link,
                          ayahNumber: ayahNumber ?? 1,
                          surah: surah!,
                        );
                  },
                  data: (data) async {
                    if (data.state == AudioServiceState.playing) {
                      await ref.read(audioServiceProvider.notifier).stop();
                    } else {
                      await ref.read(audioServiceProvider.notifier).play(
                            link,
                            ayahNumber: ayahNumber ?? 1,
                            surah: surah!,
                          );
                    }
                  },
                );
              },
            ),
          IconButton(
            icon: const Icon(
              Icons.skip_next_rounded,
              color: Colors.white,
              size: 32,
            ),
            onPressed: () async =>
                await ref.read(audioServiceProvider.notifier).playNextAyah(),
          ),
        ],
      ),
    );
  }
}
