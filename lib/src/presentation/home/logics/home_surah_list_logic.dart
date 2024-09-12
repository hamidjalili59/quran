import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/injection/modules/home_feature_modules.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_surah_list_logic.g.dart';

@Riverpod(keepAlive: true)
class HomeSurahList extends _$HomeSurahList {
  @override
  FutureOr<List<Surah>> build() => future;

  FutureOr<void> loadSurahList() async {
    state = const AsyncLoading();
    final surahList =
        await ref.read(homeRepositoryProvider).getHomeSurahFromServer();
    surahList.fold(
      (l) => state = AsyncError(l, StackTrace.current),
      (r) => state = AsyncData(r),
    );
  }
}

@Riverpod(keepAlive: true)
class HomeSurahTagFilter extends _$HomeSurahTagFilter {
  @override
  HomeSurahTagFilterEnum build() => HomeSurahTagFilterEnum.all;

  void changeTagFilter(HomeSurahTagFilterEnum tagFilter) {
    state = tagFilter;
  }
}

enum HomeSurahTagFilterEnum {
  all,
  favorite,
  joz,
}
