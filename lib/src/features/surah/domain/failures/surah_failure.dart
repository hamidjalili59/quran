// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/failures/failure.dart';

part 'surah_failure.freezed.dart';

@freezed
class SurahFailure extends Failure with _$SurahFailure{
  ///
  const factory SurahFailure.cancelledByUser() = _CancelledByUser;
  const factory SurahFailure.missingToken() = _MissingToken;
  ///
  const factory SurahFailure.api(DioError failure) = _Api;
  const factory SurahFailure.nullParam() = _NullParam;
  const factory SurahFailure.database(DatabaseError failure) = _Database;
}
