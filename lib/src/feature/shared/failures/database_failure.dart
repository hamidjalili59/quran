import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/feature/shared/failures/failure.dart';

part 'database_failure.freezed.dart';

@freezed
class DatabaseFailure with _$DatabaseFailure implements Failure {
  const factory DatabaseFailure.unableToConnect() = _UnableToConnect;

  const factory DatabaseFailure.invalidQuery({@Default('') String query}) =
      _InvalidQuery;

  const factory DatabaseFailure.noDataFound() = _NoDataFound;
}
