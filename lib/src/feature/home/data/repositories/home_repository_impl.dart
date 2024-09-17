import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:quran/src/feature/core/models/base_response.dart';
import 'package:quran/src/feature/home/data/data_sources/remote/home_remote_data_source.dart';
import 'package:quran/src/feature/home/domain/repositories/home_repository.dart';
import 'package:quran/src/feature/shared/failures/server_failure.dart';
import 'package:quran/src/feature/surah/domain/models/surah_model.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl(this._remoteDS);
  final HomeRemoteDataSource _remoteDS;
  final List<Surah> _surahList = [];

  @override
  Future<Either<ServerFailure, void>> fetchHomeSurahFromServer() async {
    return await _remoteDS.fetchDataSurahsFromServer().then(
          (value) async => await value.fold(
            (l) => left<ServerFailure, void>(l),
            (r) async {
              if (r.data != null) {
                final BaseResponse baseResponse =
                    await compute(BaseResponse.fromJson, r.data ?? {});
                final List<dynamic> surahList =
                    baseResponse.data as List<dynamic>;
                _surahList.addAll(
                  await compute(fromJsonList, surahList) as List<Surah>,
                );

                return right<ServerFailure, void>(null);
              } else {
                return left(const ServerFailure.serverError());
              }
            },
          ),
        );
  }

  @override
  Future<Either<ServerFailure, List<Surah>>> loadSurahFromLocal(
    int page,
    int pageLength,
  ) async {
    final paginationRange = PaginationRange.fromPageAndPageLength(
      page,
      pageLength,
      _surahList.length,
    );
    final resultSubList = await compute(
      _surahList.isolateSubListing,
      [paginationRange.from, paginationRange.to],
    ) as List<Surah>;

    return right<ServerFailure, List<Surah>>(resultSubList);
  }
}

extension CustomIsolateLists on List {
  List<dynamic> isolateSubListing(List<int> args) => sublist(args[0], args[1]);
}

List<dynamic> fromJsonList(List<dynamic> data) {
  return data.map((e) => Surah.fromJson(e as Map<String, dynamic>)).toList();
}

class PaginationRange {
  final int from;
  final int to;

  PaginationRange({required this.from, required this.to});

  factory PaginationRange.fromPageAndPageLength(
    int page,
    int pageLength,
    int surahLength,
  ) {
    final pageMultiply = page * pageLength;
    if (pageMultiply < surahLength) {
      return PaginationRange(from: (page - 1) * pageLength, to: pageMultiply);
    } else {
      final diffrent = surahLength - ((page - 1) * pageLength);
      return PaginationRange(
        from: (page - 1) * pageLength,
        to: ((page - 1) * pageLength) + diffrent,
      );
    }
  }
}
