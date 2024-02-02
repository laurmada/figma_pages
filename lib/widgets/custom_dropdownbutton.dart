import 'package:flutter/material.dart';

class CustomDropDownButton extends StatelessWidget {
  const CustomDropDownButton({
    super.key,
    required this.inputText,
    required this.fontColor,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
    required this.sizedBoxHeight,
    required this.items,
    required this.onChanged,
    required this.hintText,
    required this.hintColor,
    required this.hintFamily,
    required this.hintSize,
    required this.hintWeight,
    this.icon,
    /*this.value,*/
    required this.crossAxisAlignment,
  });

  final String inputText;
  final Color fontColor;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final double sizedBoxHeight;
  final List<DropdownMenuItem<String>> items;
  final void Function(String?)? onChanged;
  final String hintText;
  final Color? hintColor;
  final double? hintSize;
  final String? hintFamily;
  final FontWeight? hintWeight;
  final Widget? icon;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(inputText,
            style: TextStyle(
              color: fontColor,
              fontSize: fontSize,
              fontFamily: fontFamily,
              fontWeight: fontWeight,
            )),
        SizedBox(height: sizedBoxHeight),
        DropdownButtonFormField(
          items: items,
          onChanged: onChanged,
          hint: Text(
            hintText,
            style: TextStyle(
                fontFamily: hintFamily,
                color: hintColor,
                fontSize: hintSize,
                fontWeight: hintWeight),
          ),
          icon: icon,
        ),
      ],
    );
  }
}
