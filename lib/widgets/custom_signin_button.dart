import 'package:flutter/material.dart';

class CustomSignInButton extends StatelessWidget {
  const CustomSignInButton({
    super.key,
    required this.onPressed,
    required this.borderRadius,
    required this.buttonColor,
    required this.disabledColor,
    required this.textColor,
    required this.buttonText,
    required this.isDisabled,
    required this.fontSize,
    this.fontWeight,
    required this.fontFamily,
    required this.width,
    required this.height,
    required this.textDisabledColor,
  });

  final VoidCallback onPressed;
  final Color buttonColor;
  final double? borderRadius;
  final Color textColor;
  final Color disabledColor;
  final Color textDisabledColor;
  final String buttonText;
  final FontWeight? fontWeight;
  final String fontFamily;
  final double fontSize;
  final bool isDisabled;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        minimumSize: MaterialStatePropertyAll(Size(width, height)),
        backgroundColor: MaterialStatePropertyAll(
          isDisabled ? disabledColor : buttonColor,
        ),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0),
        )),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          color: isDisabled ? textDisabledColor : textColor,
          fontFamily: fontFamily,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
