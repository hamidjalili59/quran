import 'package:quran/src/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:quran/src/feature/home/data/repositories/home_repository_impl.dart';
import 'package:quran/src/feature/home/domain/repositories/home_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_feature_modules.g.dart';

@Riverpod(keepAlive: true)
HomeRemoteDataSource homeRemoteDataSource(HomeRemoteDataSourceRef ref) {
  return HomeRemoteDataSourceImpl(ref);
}
@Riverpod(keepAlive: true)
HomeRepository homeRepository(HomeRepositoryRef ref) {
  return HomeRepositoryImpl(ref.read(homeRemoteDataSourceProvider));
}
