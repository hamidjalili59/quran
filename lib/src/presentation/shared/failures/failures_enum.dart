// ignore_for_file: constant_identifier_names

enum FailuresEnum {
  bad_request,
  unauthorized,
  access_denied,
  null_data,
  not_found,
  validation,
  duplicate,
  invalid_request,
  cross_origin,
  timeout,
  serverError,
  none,
}

extension FailureMessageEx on FailuresEnum {
  String toFailureMessage() {
    switch (this) {
      case FailuresEnum.bad_request:
        return 'invalid_request_failure';
      case FailuresEnum.unauthorized:
        return 'access_denied_failure';
      case FailuresEnum.access_denied:
        return 'access_denied_failure';
      case FailuresEnum.null_data:
        return 'null_data_failure';
      case FailuresEnum.not_found:
        return 'not_found_failure';
      case FailuresEnum.duplicate:
        return 'duplicate_failure';
      case FailuresEnum.validation:
        return 'validation_error_failure';
      case FailuresEnum.invalid_request:
        return 'invalid_request_failure';
      case FailuresEnum.cross_origin:
        return 'cross_origin_failure';
      case FailuresEnum.timeout:
        return 'error_try_again';
      case FailuresEnum.serverError:
        return 'server_failure';
      case FailuresEnum.none:
        return 'none';
    }
  }
}

extension FailuresEnumEx on String {
  FailuresEnum toFailuresEnum() {
    return FailuresEnum.values.firstWhere(
      (failure) => failure.name == this,
      orElse: () => FailuresEnum.none,
    );
  }
}
