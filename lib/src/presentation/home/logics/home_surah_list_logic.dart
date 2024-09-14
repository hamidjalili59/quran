import 'package:quran/src/feature/surah/domain/models/surah_model.dart';
import 'package:quran/src/injection/modules/home_feature_modules.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_surah_list_logic.g.dart';

@Riverpod(keepAlive: true)
class HomeSurahList extends _$HomeSurahList {
  static const int _pageSize = 15;
  int _currentPage = 1;
  bool _hasMore = true;
  bool _isLoading = false;

  @override
  FutureOr<HomeSurahListState> build() =>
      HomeSurahListState(hasMore: true, surahs: []);

  Future<void> loadSurahList() async {
    if (state.isLoading || !_hasMore) return;

    state = const AsyncLoading();
    final fetchSurahFromServer =
        await ref.read(homeRepositoryProvider).fetchHomeSurahFromServer();
    await fetchSurahFromServer.fold(
      (l) async => state = AsyncError(l, StackTrace.current),
      (r) async => await _loadMoreSurahs(),
    );
  }

  Future<void> loadMoreSurahs() async {
    if (state.isLoading || !_hasMore || _isLoading) return;
    // state = const AsyncLoading();
    _isLoading = true;
    await _loadMoreSurahs();
    _isLoading = false;
  }

  Future<void> _loadMoreSurahs() async {
    final surahList = await ref
        .read(homeRepositoryProvider)
        .loadSurahFromLocal(_currentPage, _pageSize);
    surahList.fold(
      (l) => state = AsyncError(l, StackTrace.current),
      (r) {
        final currentSurahs = state.value?.surahs ?? [];
        final newSurahs = [...currentSurahs, ...r];
        state = AsyncData(
          HomeSurahListState(
            surahs: newSurahs,
            hasMore: r.length == _pageSize,
          ),
        );
        _currentPage++;
        _hasMore = r.length == _pageSize;
      },
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

class HomeSurahListState {
  final List<Surah> surahs;
  final bool hasMore;

  HomeSurahListState({
    required this.surahs,
    required this.hasMore,
  });
}
