// * this function creates a combination of the text and
// * text field used in the project
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../model/utilities/constants/colors.dart';
import '../../../model/utilities/constants/strings.dart';
import '../../uiElements/generalTextFieldDisplay.dart';

Widget textAndTextField(context,
    {required TextInputType textInputType,
    required TextEditingController controller,
    required String hint,
    required String labelText,
    required Function onChanged,
    required List<TextInputFormatter> inputFormatter,
    required bool errorTextActive,
    required FocusNode focusNode,
    required Widget? prefix,
    Widget? suffix,
    Widget? suffixIcon,
    bool? obscureText,
    Color? borderColor,
    bool? enabled,
    double? width}) {
  return FormattedTextFields(
    labelText: labelText,
    keyInputType: textInputType,
    textFieldController: controller,
    textFieldHint: hint,
    enabled: enabled ?? true,
    textFieldLineSpan: 1,
    height: 52,
    width: width ?? 320,
    containerColor: red!,
    noBorder: false,
    autoFocus: false,
    inputFormatters: inputFormatter,
    onChangedFunction: onChanged,
    errorTextActive: errorTextActive,
    focusNode: focusNode,
    prefixIcon: null,
    prefix: prefix,
    suffixIcon: suffixIcon,
    suffix: suffix,
    textFont: 15,
    hintFont: 14,
    borderRadius: 10,
    cursorColor: white,
    obscureText: obscureText ?? false,
    hintColor: white,
    outLineBorderColor: black,
    focusBorderColor: errorTextActive ? red! : black,
    textFontWeight: FontWeight.w500,
    hintFontWeight: FontWeight.w400,
    contentPadding: EdgeInsets.only(
        left: sS(context).cW(width: 16),
        right: sS(context).cW(width: 16),
        top: sS(context).cH(height: 16),
        bottom: sS(context).cH(height: 15)),
  );
}