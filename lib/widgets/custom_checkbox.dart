import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  const CustomCheckbox({
    super.key,
    required this.containerHeight,
    required this.containerWidth,
    required this.borderRadius,
    required this.border,
    required this.value,
    required this.checkColor,
    required this.onChanged,
    required this.sizedBoxWidth,
    required this.fontSize,
    required this.fontFamily,
    required this.fontWeight,
    required this.fontColor_1,
    required this.fontColor_2,
  });

  final double containerWidth;
  final double containerHeight;
  final BorderRadiusGeometry? borderRadius;
  final Border border;
  final Color checkColor;
  final bool value;
  final Function(bool?) onChanged;
  final double sizedBoxWidth;
  final double fontSize;
  final String fontFamily;
  final FontWeight fontWeight;
  final Color fontColor_1;
  final Color fontColor_2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: containerWidth,
          height: containerHeight,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
            border: border,
          ),
          child: Checkbox(
            checkColor: checkColor,
            value: value,
            onChanged: onChanged,
          ),
        ),
        SizedBox(width: sizedBoxWidth),
        Text(
          "I agree with hub's",
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor_1,
          ),
        ),
        Text(
          ' Terms',
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor_2,
          ),
        ),
        Text(
          ',',
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor_1,
          ),
        ),
        Text(
          ' Privacy Policy',
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor_2,
          ),
        ),
        Text(
          '.',
          style: TextStyle(
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: fontColor_1,
          ),
        ),
      ],
    );
  }
}
