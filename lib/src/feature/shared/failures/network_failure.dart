import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/shared/failures/failure.dart';

part 'network_failure.freezed.dart';

@freezed
class NetworkFailure with _$NetworkFailure implements Failure {
  const factory NetworkFailure.noInternetConnection() = _NoInternetConnection;

  const factory NetworkFailure.requestTimeout() = _RequestTimeout;

  const factory NetworkFailure.invalidUrl({@Default('') String url}) =
      _InvalidUrl;
}
