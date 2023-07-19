// ignore_for_file: depend_on_referenced_packages

import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/failures/failure.dart';

part 'ayah_failure.freezed.dart';

@freezed
class AyahFailure extends Failure with _$AyahFailure {
  ///
  const factory AyahFailure.cancelledByUser() = _CancelledByUser;
  const factory AyahFailure.missingToken() = _MissingToken;

  ///
  const factory AyahFailure.api(DioException failure) = _Api;
  const factory AyahFailure.nullParam() = _NullParam;
  const factory AyahFailure.database(DatabaseError failure) = _Database;
}
