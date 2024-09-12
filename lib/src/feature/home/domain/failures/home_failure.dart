// ignore_for_file: depend_on_referenced_packages

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/core/failures/database_failure.dart';
import 'package:quran/src/feature/shared/failures/failure.dart';

part 'home_failure.freezed.dart';

@freezed
class HomeFailure extends Failure with _$HomeFailure {
  ///
  const factory HomeFailure.cancelledByUser() = _CancelledByUser;
  const factory HomeFailure.missingToken() = _MissingToken;

  ///
  const factory HomeFailure.api(DioException failure) = _Api;
  const factory HomeFailure.nullParam() = _NullParam;
  const factory HomeFailure.database(DatabaseFailure failure) = _Database;
}
