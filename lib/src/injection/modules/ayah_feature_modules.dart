import 'package:quran/src/feature/ayah/data/data_sources/remote/ayah_remote_data_source.dart';
import 'package:quran/src/feature/ayah/data/repositories/ayah_repository_impl.dart';
import 'package:quran/src/feature/ayah/domain/repositories/ayah_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ayah_feature_modules.g.dart';

@Riverpod(keepAlive: true)
AyahRemoteDataSource ayahRemoteDataSource(AyahRemoteDataSourceRef ref) {
  return AyahRemoteDataSource(ref);
}
@Riverpod(keepAlive: true)
AyahRepository ayahRepository(AyahRepositoryRef ref) {
  return AyahRepositoryImpl(ref.read(ayahRemoteDataSourceProvider));
}
