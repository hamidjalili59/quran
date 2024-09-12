class FormValidators {
  String? emptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return '';
    }
    return null;
  }

  String? lengthValidator(String value, int minLength) {
    if (value.length < minLength) {
      return '';
    }
    return null;
  }

  String? nameValidator(String? value) {
    var res = emptyValidator(value);
    return res ??= lengthValidator(value!, 3);
  }

  String? cardNumberValidator(String? value) {
    var res = emptyValidator(value);
    return res ??= lengthValidator(value!, 4);
  }

  String? phoneNumberValidator(String? value) {
    const pattern = r'^09[0|1|2|3|9][0-9]{8}$';
    final regExp = RegExp(pattern, caseSensitive: false);

    var res = emptyValidator(value);
    return res ??= regExp.hasMatch(value!) ? null : 'شماره همراه اشتباه';
  }

  String? phoneNumberWithCountryCodeValidator(String? value) {
    const pattern = r'^(?:0|98|\+98|0098)(9[0|1|2|3|9][0-9]{8})$';
    final regExp = RegExp(pattern, caseSensitive: false);

    var res = emptyValidator(value);
    return res ??= regExp.hasMatch(value!) ? null : 'شماره همراه اشتباه';
  }

  String? emailValidator(String? value) {
    var res = emptyValidator(value);
    return res ??= !RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(value!)
        ? ''
        : null;
  }

  String? repoRemoveValidator(String? value, String repoName) {
    if (value == null || value != repoName) {
      return 'نام مخزن صحیح نیست';
    }
    return null;
  }
}
