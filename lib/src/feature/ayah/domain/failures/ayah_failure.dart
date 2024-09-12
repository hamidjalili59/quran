import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/core/failures/database_failure.dart';
import 'package:quran/src/feature/shared/failures/failure.dart';

part 'ayah_failure.freezed.dart';

@freezed
class AyahFailure extends Failure with _$AyahFailure {
  ///
  const factory AyahFailure.cancelledByUser() = _CancelledByUser;
  const factory AyahFailure.missingToken() = _MissingToken;

  ///
  const factory AyahFailure.api(DioException failure) = _Api;
  const factory AyahFailure.nullParam() = _NullParam;
  const factory AyahFailure.database(DatabaseFailure failure) = _Database;
}
