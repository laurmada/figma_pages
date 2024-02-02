import 'package:flutter/material.dart';

class CustomSignUpButton extends StatelessWidget {
  const CustomSignUpButton({
    super.key,
    required this.height,
    required this.width,
    required this.borderRadius,
    required this.inputText,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.fontColor,
    required this.onPressed,
  });

  final VoidCallback onPressed;
  final double height;
  final double width;
  final BorderRadiusGeometry borderRadius;
  final String inputText;
  final Color fontColor;
  final String fontFamily;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(width, height)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: borderRadius,
        )),
      ),
      child: Text(
        inputText,
        style: TextStyle(
          color: fontColor,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
