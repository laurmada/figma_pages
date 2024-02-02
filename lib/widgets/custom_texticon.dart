import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextIcon extends StatelessWidget {
  const CustomTextIcon({
    super.key,
    required this.svgPicture,
    required this.inputText,
    required this.fontColor,
    required this.fontSize,
    required this.fontWeight,
    required this.textAlign,
    required this.fontFamily,
  });

  final SvgPicture svgPicture;
  final String inputText;
  final double fontSize;
  final Color fontColor;
  final String fontFamily;
  final FontWeight fontWeight;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        svgPicture,
        Text(
          inputText,
          style: TextStyle(
            color: fontColor,
            fontSize: fontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
          ),
          textAlign: textAlign,
        ),
      ],
    );
  }
}
