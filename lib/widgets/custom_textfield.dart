import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.fontColor,
    this.keyboardType,
    this.fontSize,
    this.fontFamily,
    this.fontWeight,
    this.prefixIcon,
    this.suffixIcon,
    required this.hintColor,
    this.hintFamily,
    this.hintWeight,
    this.hintSize,
    required this.crossAxisAlignment,
    this.sizedBoxHeight,
    required this.obscure,
    required this.textInput,
    this.textAlign,
  });

  final Function(String) onChanged;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String hintText;
  final double? hintSize;
  final Color hintColor;
  final String? hintFamily;
  final FontWeight? hintWeight;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscure;
  final CrossAxisAlignment crossAxisAlignment;
  final String textInput;
  final double? fontSize;
  final Color fontColor;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final double? sizedBoxHeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(textInput,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
            )),
        SizedBox(height: sizedBoxHeight),
        TextField(
            onChanged: onChanged,
            controller: controller,
            obscureText: obscure,
            decoration: InputDecoration(
              hintText: hintText,
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintStyle: TextStyle(
                color: hintColor,
                fontSize: hintSize,
                fontFamily: hintFamily,
                fontWeight: hintWeight,
              ),
            ),
            textAlign: textAlign ?? TextAlign.start),
      ],
    );
  }
}
