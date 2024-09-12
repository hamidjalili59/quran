import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/injection/modules/surah_feature_modules.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'surah_logic.g.dart';

@Riverpod(keepAlive: true)
class SurahLogic extends _$SurahLogic {
  @override
  FutureOr<Surah> build() => future;

  Future<void> fetchSurah(int surahNumber) async {
    if (state.hasValue) {
      if (state.value!.number == surahNumber) return;
    }
    state = const AsyncLoading();
    final surah = await ref
        .read(surahRepositoryProvider)
        .getSurah(surahNumber: surahNumber);
    surah.fold(
      (l) {
        state = AsyncError(l, StackTrace.current);
      },
      (r) {
        state = AsyncData(r);
      },
    );
  }
}

@Riverpod(keepAlive: true)
class SurahTranslateLogic extends _$SurahTranslateLogic {
  @override
  FutureOr<Surah> build() => future;

  Future<void> fetchSurah(int surahNumber) async {
    if (state.hasValue) {
      if (state.value!.number == surahNumber) return;
    }

    ref.read(currentAyahNumberProvider.notifier).setAyahNumber(0);
    state = const AsyncLoading();
    final surah = await ref
        .read(surahRepositoryProvider)
        .getSurahTranslate(surahNumber: surahNumber);
    surah.fold(
      (l) {
        state = AsyncError(l, StackTrace.current);
      },
      (r) {
        state = AsyncData(r);
      },
    );
  }
}

@Riverpod(keepAlive: true)
class CurrentAyahNumber extends _$CurrentAyahNumber {
  @override
  int build() => 0;

  void setAyahNumber(int number) {
    state = number;
  }
}
