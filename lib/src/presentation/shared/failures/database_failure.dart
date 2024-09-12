import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:quran/src/presentation/shared/failures/failure.dart';

part 'database_failure.freezed.dart';

@freezed
class DatabaseFailure extends Failure with _$DatabaseFailure {
  const factory DatabaseFailure.nullData() = _NullData;
  const factory DatabaseFailure.emptyData() = _EmptyData;
  const factory DatabaseFailure.unknown(e) = _Unknown;
  const factory DatabaseFailure.cache() = _Cache;
}
