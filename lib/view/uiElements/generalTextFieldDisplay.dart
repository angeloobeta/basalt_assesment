// this textField is for otp textField
import 'package:basalt_assesment/model/imports/generalImport.dart';

class PinTextField extends StatelessWidget {
  final TextInputType keyInputType;
  final TextEditingController textFieldController;
  final int textFieldLineSpan;
  final String textFieldLabel;
  final String textFieldHint;
  final dynamic functionValue;
  final double height;
  final double width;
  final Color containerColor;
  final bool greyBackground;
  final FocusNode focus;
  final Function onFieldSubmitted;
  final int maxIndex;
  final bool errorTextActive;

  const PinTextField(
      this.keyInputType,
      this.textFieldController,
      this.textFieldLabel,
      this.textFieldHint,
      this.functionValue,
      this.textFieldLineSpan,
      this.height,
      this.width,
      this.containerColor,
      this.greyBackground,
      this.focus,
      this.onFieldSubmitted,
      this.maxIndex,
      {this.errorTextActive = false});

  @override
  Widget build(BuildContext context) {
    Size dynamicSize = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Container(
      height: sS(context).cH(height: height),
      width: sS(context).cW(width: width),
      decoration: BoxDecoration(
        color: black,
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.height * (4 / 768)),
        border: Border.all(
            color: errorTextActive == true ? red! : transparent,
            width: errorTextActive == true ? 2.0 : 0.0,
            style: BorderStyle.solid),
      ),
      alignment: Alignment.center,
      child: Align(
        alignment: Alignment.center,
        child: TextFormField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly
          ],
          cursorColor: black,
          keyboardType: keyInputType,
          controller: textFieldController,
          maxLines: textFieldLineSpan,
          focusNode: focus,
          textInputAction:
              maxIndex == 4 ? TextInputAction.done : TextInputAction.next,
          onChanged: (change) {
            onFieldSubmitted();
          },
          style: GoogleFonts.poppins(
              textStyle: TextStyle(
                  color: black,
                  fontSize: orientation == Orientation.portrait
                      ? sS(context).cH(height: 30)
                      : dynamicSize.width * (16 / 768),
                  fontWeight: FontWeight.w500)),
          autocorrect: false,
          decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText: textFieldLabel,
              hintStyle: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * (30 / 768)
                          : dynamicSize.width * (16 / 768),
                      color: Colors.grey,
                      fontWeight: FontWeight.w500)),
              hintText: textFieldHint,
              labelStyle: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                      fontSize: orientation == Orientation.portrait
                          ? MediaQuery.of(context).size.height * (15 / 768)
                          : dynamicSize.width * (16 / 812),
                      color: const Color.fromRGBO(186, 186, 186, 1.0),
                      fontWeight: FontWeight.w500)),
              contentPadding: EdgeInsets.fromLTRB(
                  MediaQuery.of(context).size.width * (19 / 375),
                  MediaQuery.of(context).size.height * (2 / 768),
                  MediaQuery.of(context).size.width * (2 / 375),
                  MediaQuery.of(context).size.height * (2 / 768)),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: button,
                      width: 1.0,
                      style: greyBackground == true
                          ? BorderStyle.none
                          : BorderStyle.solid),
                  borderRadius: BorderRadius.circular(
                    orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * (4 / 768)
                        : dynamicSize.width * (4 / 768),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: black, width: 1.0, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(
                    orientation == Orientation.portrait
                        ? MediaQuery.of(context).size.height * (4 / 768)
                        : dynamicSize.width * (4 / 768),
                  ))),
        ),
      ),
    );
  }
}

class FormattedTextFields extends StatelessWidget {
  final TextInputType keyInputType;
  final TextEditingController textFieldController;
  final int textFieldLineSpan;
  final String textFieldHint, labelText;
  final double height, width, textFont, hintFont, borderRadius;
  final Color containerColor,
      cursorColor,
      hintColor,
      outLineBorderColor,
      focusBorderColor;
  final bool? noBorder, autoFocus, obscureText;
  final Function? onChangedFunction;
  final List<TextInputFormatter> inputFormatters;
  final bool errorTextActive;
  final FocusNode? focusNode;
  final Widget? prefixIcon, suffixIcon, suffix;
  final Widget? prefix;
  final FontWeight textFontWeight, hintFontWeight;
  final EdgeInsets? contentPadding;
  final FloatingLabelBehavior? floatingBehaviour;
  final bool? enabled;

  const FormattedTextFields(
      {required this.keyInputType,
      required this.textFieldController,
      required this.textFieldHint,
      required this.textFieldLineSpan,
      required this.height,
      required this.width,
      required this.containerColor,
      required this.noBorder,
      required this.autoFocus,
      required this.inputFormatters,
      required this.onChangedFunction,
      required this.errorTextActive,
      required this.focusNode,
      required this.prefixIcon,
      required this.prefix,
      required this.suffixIcon,
      required this.textFont,
      required this.hintFont,
      required this.borderRadius,
      required this.cursorColor,
      required this.hintColor,
      required this.outLineBorderColor,
      required this.focusBorderColor,
      required this.textFontWeight,
      required this.hintFontWeight,
      required this.labelText,
      this.contentPadding,
      this.obscureText,
      this.suffix,
      this.floatingBehaviour,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sS(context).cH(height: height),
      width: sS(context).cW(width: width),
      decoration: BoxDecoration(
        color: hexColor("263238"),
        border: enabled == false
            ? Border.all(color: textFieldText, width: 1.0)
            : Border.all(color: transparent, width: 0.0),
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.height * (borderRadius / 768)),
      ),
      alignment: Alignment.center,
      child: TextFormField(
        focusNode: focusNode ?? FocusNode(),
        onChanged: (changed) {
          onChangedFunction!();
        },
        // this function to validate the
        // text field as the user types in it
        autofocus: autoFocus!,
        cursorColor: black,
        enabled: enabled ?? true,
        keyboardType: keyInputType,
        obscureText: obscureText ?? false,
        controller: textFieldController,
        maxLines: textFieldLineSpan,
        inputFormatters: inputFormatters,
        style: TextStyle(
          fontFamily: "SFDisplay",
          color: textFieldText,
          fontSize: textFont,
          fontWeight: textFontWeight,
        ),
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix,
            prefix: prefix,
            labelText: labelText,
            labelStyle: TextStyle(
                fontFamily: "SFDisplay",
                fontSize: sS(context).cH(height: hintFont),
                color: white,
                fontWeight: hintFontWeight),
            hintStyle: TextStyle(
                fontFamily: "SFDisplay",
                fontSize: sS(context).cH(height: hintFont),
                color: hintColor,
                fontWeight: hintFontWeight),
            hintText: textFieldHint,
            contentPadding: contentPadding,
            floatingLabelBehavior:
                floatingBehaviour ?? FloatingLabelBehavior.auto,
            enabledBorder: OutlineInputBorder(
                borderSide: noBorder == true
                    ? BorderSide.none
                    : BorderSide(
                        color: errorTextActive && focusNode!.hasFocus
                            ? transparent
                            : textFieldText,
                        width: 1.0,
                        style: noBorder == true
                            ? BorderStyle.none
                            : BorderStyle.solid),
                borderRadius:
                    BorderRadius.circular(sS(context).cW(width: borderRadius))),
            focusedBorder: OutlineInputBorder(
                borderSide: noBorder == true
                    ? BorderSide.none
                    : BorderSide(
                        color: errorTextActive ? error : white,
                        width: 1.0,
                        style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(
                    sS(context).cW(width: borderRadius)))),
      ),
    );
  }
}

class FormattedTextField extends StatelessWidget {
  final TextInputType keyInputType;
  final TextEditingController textFieldController;
  final int textFieldLineSpan;
  final String textFieldHint, labelText;
  final double height, width, textFont, hintFont, borderRadius;
  final Color containerColor,
      cursorColor,
      hintColor,
      outLineBorderColor,
      focusBorderColor;
  final bool? noBorder, autoFocus, obscureText;
  final Function? onChangedFunction;
  final List<TextInputFormatter> inputFormatters;
  final bool errorTextActive;
  final FocusNode? focusNode;
  final Widget? prefixIcon, suffixIcon, suffix;
  final Widget? prefix;
  final FontWeight textFontWeight, hintFontWeight;
  final EdgeInsets? contentPadding;
  final FloatingLabelBehavior? floatingBehaviour;
  final bool? enabled;

  const FormattedTextField(
      {required this.keyInputType,
      required this.textFieldController,
      required this.textFieldHint,
      required this.textFieldLineSpan,
      required this.height,
      required this.width,
      required this.containerColor,
      required this.noBorder,
      required this.autoFocus,
      required this.inputFormatters,
      required this.onChangedFunction,
      required this.errorTextActive,
      required this.focusNode,
      required this.prefixIcon,
      required this.prefix,
      required this.suffixIcon,
      required this.textFont,
      required this.hintFont,
      required this.borderRadius,
      required this.cursorColor,
      required this.hintColor,
      required this.outLineBorderColor,
      required this.focusBorderColor,
      required this.textFontWeight,
      required this.hintFontWeight,
      required this.labelText,
      this.contentPadding,
      this.obscureText,
      this.suffix,
      this.floatingBehaviour,
      this.enabled});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sS(context).cH(height: height),
      width: sS(context).cW(width: width),
      decoration: BoxDecoration(
        color: transparent,
        border: enabled == false
            ? Border.all(color: textFieldText, width: 1.0)
            : Border.all(color: textFieldText, width: 0.0),
        borderRadius: BorderRadius.circular(
            MediaQuery.of(context).size.height * (borderRadius / 768)),
      ),
      alignment: Alignment.center,
      child: TextFormField(
        focusNode: focusNode ?? FocusNode(),
        onChanged: (changed) {
          onChangedFunction!();
        },
        // this function to validate the
        // text field as the user types in it
        autofocus: autoFocus!,
        cursorColor: red,
        enabled: enabled ?? true,
        keyboardType: keyInputType,
        obscureText: obscureText ?? false,
        controller: textFieldController,
        maxLines: textFieldLineSpan,
        inputFormatters: inputFormatters,
        style: TextStyle(
          fontFamily: "SFDisplay",
          color: red,
          fontSize: textFont,
          fontWeight: textFontWeight,
        ),
        decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            suffix: suffix,
            prefix: prefix,
            labelText: labelText,
            labelStyle: TextStyle(
                fontFamily: "SFDisplay",
                fontSize: sS(context).cH(height: hintFont),
                color: red,
                fontWeight: hintFontWeight),
            hintStyle: TextStyle(
                fontFamily: "SFDisplay",
                fontSize: sS(context).cH(height: hintFont),
                color: hintColor,
                fontWeight: hintFontWeight),
            hintText: textFieldHint,
            contentPadding: contentPadding,
            floatingLabelBehavior:
                floatingBehaviour ?? FloatingLabelBehavior.auto,
            enabledBorder: OutlineInputBorder(
                borderSide: noBorder == true
                    ? BorderSide.none
                    : BorderSide(
                        color: errorTextActive && focusNode!.hasFocus
                            ? transparent
                            : textFieldText,
                        width: 1.0,
                        style: noBorder == true
                            ? BorderStyle.none
                            : BorderStyle.solid),
                borderRadius:
                    BorderRadius.circular(sS(context).cW(width: borderRadius))),
            focusedBorder: OutlineInputBorder(
                borderSide: noBorder == true
                    ? BorderSide.none
                    : BorderSide(
                        color: errorTextActive ? error : white,
                        width: 1.0,
                        style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(
                    sS(context).cW(width: borderRadius)))),
      ),
    );
  }
}
