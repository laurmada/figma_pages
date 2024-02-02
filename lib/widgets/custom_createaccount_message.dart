import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomCreateAccountMessage extends StatelessWidget {
  const CustomCreateAccountMessage({
    super.key,
    required this.textInput_1,
    required this.textInput_2,
    required this.fontColor_1,
    required this.fontColor_2,
    required this.fontSize_1,
    required this.fontSize_2,
    required this.fontFamily,
    required this.fontWeight_1,
    required this.fontWeight_2,
    required this.sizedBoxHeight,
  });

  final String textInput_1;
  final String textInput_2;
  final Color fontColor_1;
  final Color fontColor_2;
  final double fontSize_1;
  final double fontSize_2;
  final String fontFamily;
  final FontWeight fontWeight_1;
  final FontWeight fontWeight_2;
  final double sizedBoxHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          textInput_1,
          style: TextStyle(
            color: fontColor_1,
            fontSize: fontSize_1,
            fontFamily: fontFamily,
            fontWeight: fontWeight_1,
          ),
        ),
        SizedBox(height: sizedBoxHeight),
        Text(
          textInput_2,
          style: TextStyle(
            color: fontColor_2,
            fontSize: fontSize_2,
            fontFamily: fontFamily,
            fontWeight: fontWeight_2,
          ),
        ),
      ],
    );
  }
}
