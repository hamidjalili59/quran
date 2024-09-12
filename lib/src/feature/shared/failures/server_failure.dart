import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/shared/failures/failure.dart';

part 'server_failure.freezed.dart';

@freezed
class ServerFailure with _$ServerFailure implements Failure {
  const factory ServerFailure.unexpectedStatusCode(int statusCode) =
      _UnexpectedStatusCode;

  const factory ServerFailure.unexpectedStatusCodeWithMessage(String message) =
      _UnexpectedStatusCodeWithMessage;

  const factory ServerFailure.invalidJson(String json) = _InvalidJson;

  const factory ServerFailure.serverError() = _ServerError;
}
