import 'package:quran/src/feature/surah/data/data_sources/remote/surah_remote_data_source.dart';
import 'package:quran/src/feature/surah/data/repositories/surah_repository_impl.dart';
import 'package:quran/src/feature/surah/domain/repositories/surah_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'surah_feature_modules.g.dart';

@Riverpod(keepAlive: true)
SurahRemoteDataSource surahRemoteDataSource(SurahRemoteDataSourceRef ref) {
  return SurahRemoteDataSourceImpl(ref);
}
@Riverpod(keepAlive: true)
SurahRepository surahRepository(SurahRepositoryRef ref) {
  return SurahRepositoryImpl(ref.read(surahRemoteDataSourceProvider));
}
