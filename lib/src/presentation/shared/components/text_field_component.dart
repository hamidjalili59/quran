import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/src/config/config.dart';
import 'package:quran/src/core/core.dart';

typedef Validator = String? Function(String? value);

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.maxLength,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.errorText,
    this.suffixIcon,
    this.validator,
    this.counterText = '',
    this.readOnly = false,
    this.minLines = 1,
    this.maxLines = 1,
    this.inputFormatters,
    this.fillColor,
    this.onTap,
    this.onFieldSubmitted,
    this.onChanged,
    this.textAlign,
    this.textDirection,
    super.key,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final int? maxLength;
  final int minLines;
  final int maxLines;
  final Validator? validator;
  final bool obscureText;
  final String? errorText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String counterText;
  final bool readOnly;
  final Color? fillColor;
  final TextAlign? textAlign;
  final TextInputType keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final void Function(String?)? onSaved;
  final dynamic Function()? onTap;
  final dynamic Function(String)? onFieldSubmitted;
  final void Function(String)? onChanged;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    final hintTextStyle = kNormalTextStyle.copyWith(
      color: kTextHintColor,
    );
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(kBorderRadius),
      borderSide: const BorderSide(color: Colors.black38),
    );

    final errorStyle = context.theme.textTheme.labelSmall!.copyWith(
      color: kErrorColor,
    );

    const contentPadding = EdgeInsets.only(top: 16);

    return TextFormField(
      controller: controller,
      focusNode: focusNode,
      maxLength: maxLength ?? 200,
      textDirection: textDirection,
      maxLines: maxLines,
      minLines: minLines,
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      textAlignVertical: TextAlignVertical.center,
      textAlign: textAlign ?? TextAlign.start,
      cursorColor: Colors.white54,
      style: kNormalTextStyle.copyWith(color: Colors.white),
      decoration: InputDecoration(
        hintTextDirection: textDirection,
        errorText: errorText,
        counterStyle: context.theme.textTheme.labelSmall,
        errorStyle: errorStyle,
        counterText: '',
        hintText: hintText,
        hintStyle: hintTextStyle,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        errorBorder: outlineInputBorder,
        focusedErrorBorder: outlineInputBorder,
        contentPadding: contentPadding,
        isDense: false,
        errorMaxLines: 1,
        alignLabelWithHint: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        fillColor: fillColor ?? Colors.white,
      ),
      keyboardType: keyboardType,
      textInputAction: TextInputAction.done,
      autovalidateMode: AutovalidateMode.disabled,
      onSaved: onSaved,
      validator: validator,
      readOnly: readOnly,
      onTap: onTap,
      onFieldSubmitted: onFieldSubmitted,
      onChanged: (value) {
        controller.value = TextEditingValue(
          selection: controller.selection,
          text: value.toPersianString(),
        );
        onChanged?.call(value);
      },
    );
  }
}
