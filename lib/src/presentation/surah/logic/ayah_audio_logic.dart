import 'package:just_audio/just_audio.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/injection/main_modules_providers.dart';
import 'package:quran/src/injection/modules/ayah_feature_modules.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ayah_audio_logic.g.dart';

@Riverpod(keepAlive: true)
class AudioService extends _$AudioService {
  @override
  FutureOr<AudioServiceStateModel> build() =>
      AudioServiceStateModel(state: AudioServiceState.stopped);

  Future<void> play(
    String? link, {
    required Surah surah,
    required int ayahNumber,
  }) async {
    if (link == null) return;
    state = AsyncData(
      state.value!.copyWith(
        ayahNumber: ayahNumber,
        surah: surah,
      ),
    );
    final player = ref.read(audioPlayerProvider);

    final result = await ref.read(ayahRepositoryProvider).voiceExists(
          ayahNumber: ayahNumber,
          surah: surah,
          qari: 'qari',
          audioLink: link,
        );

    player.playerStateStream.listen((event) {
      if (event.processingState == ProcessingState.completed) {
        if (ayahNumber < (surah.numberOfAyahs ?? 1) - 1) {
          state = AsyncData(
            state.value!.copyWith(state: AudioServiceState.completed),
          );
        } else {
          state = AsyncData(
            state.value!.copyWith(state: AudioServiceState.stopped),
          );
        }
      } else if (event.processingState == ProcessingState.loading) {
        state = const AsyncLoading();
      } else if (event.playing) {
        state =
            AsyncData(state.value!.copyWith(state: AudioServiceState.playing));
      } else {
        state =
            AsyncData(state.value!.copyWith(state: AudioServiceState.paused));
      }
    });

    try {
      await result.fold(
        (l) async {
          ref.read(ayahRepositoryProvider).getVoice(
                ayahNumber: ayahNumber,
                surah: surah,
                qari: 'qari',
                audioLink: link,
              );
          await player.setUrl(link);
        },
        (r) async {
          await player.setFilePath(r);
        },
      );
      state =
          AsyncData(state.value!.copyWith(state: AudioServiceState.playing));
      await player.play();
    } catch (e) {
      state = AsyncError(e, StackTrace.current);
    }
  }

  FutureOr<void> playNextAyah() async {
    final ayahNumber = state.value?.ayahNumber ?? 0;
    final surah = state.value!.surah;

    if (surah != null && ayahNumber < surah.numberOfAyahs! - 1) {
      final nextAyahNumber = ayahNumber + 1;
      if (nextAyahNumber != ayahNumber) {
        state = AsyncData(state.value!.copyWith(ayahNumber: nextAyahNumber));

        final nextAyahAudio = surah.ayahs?[nextAyahNumber].audio;
        if (nextAyahAudio != null) {
          await play(nextAyahAudio, surah: surah, ayahNumber: nextAyahNumber);
        }
      }
    } else {
      await stop();
    }
  }

  FutureOr<void> previousNextAyah() async {
    final ayahNumber = state.value?.ayahNumber ?? 0;
    final surah = state.value!.surah;

    if (surah != null && ayahNumber > 0) {
      final nextAyahNumber = ayahNumber - 1;
      if (nextAyahNumber != ayahNumber) {
        state = AsyncData(state.value!.copyWith(ayahNumber: nextAyahNumber));

        final nextAyahAudio = surah.ayahs?[nextAyahNumber].audio;
        if (nextAyahAudio != null) {
          await play(nextAyahAudio, surah: surah, ayahNumber: nextAyahNumber);
        }
      }
    } else {
      await stop();
    }
  }

  Future<void> pause() async {
    state = const AsyncLoading();

    await ref.read(audioPlayerProvider).stop();
    state = AsyncData(state.value!.copyWith(state: AudioServiceState.paused));
  }

  Future<void> stop() async {
    state = const AsyncLoading();
    await ref.read(audioPlayerProvider).stop();
    state = AsyncData(state.value!.copyWith(state: AudioServiceState.stopped));
  }
}

extension AudioServiceExtension on AudioServiceState {
  bool isPlay() => this == AudioServiceState.playing;
  bool isPause() => this == AudioServiceState.paused;
  bool isStop() => this == AudioServiceState.stopped;
  bool isCompleted() => this == AudioServiceState.completed;
}

enum AudioServiceState {
  playing,
  paused,
  stopped,
  completed,
}

class AudioServiceStateModel {
  final AudioServiceState state;
  final int? ayahNumber;
  final Surah? surah;

  AudioServiceStateModel({
    required this.state,
    this.ayahNumber,
    this.surah,
  });

  AudioServiceStateModel copyWith({
    AudioServiceState? state,
    int? ayahNumber,
    Surah? surah,
  }) {
    return AudioServiceStateModel(
      state: state ?? this.state,
      ayahNumber: ayahNumber ?? this.ayahNumber,
      surah: surah ?? this.surah,
    );
  }
}
