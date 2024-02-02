import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    this.surfaceTint,
    this.elevation,
    required this.icon,
    required this.textInput,
    this.fontColor,
    this.fontFamily,
    this.fontSize,
    this.fontWeight,
  });

  final VoidCallback onPressed;
  final Color? surfaceTint;
  final double? elevation;
  final Color backgroundColor;
  final Widget icon;
  final String textInput;
  final Color? fontColor;
  final String? fontFamily;
  final double? fontSize;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //remove a alteração de cor quando ocorre scroll
      surfaceTintColor: surfaceTint,
      elevation: elevation,
      backgroundColor: backgroundColor,
      title: Row(
        children: [
          IconButton(
            onPressed: onPressed,
            icon: icon,
          ),
          Text(
            textInput,
            style: TextStyle(
              color: fontColor,
              fontFamily: fontFamily,
              fontSize: fontSize,
              fontWeight: fontWeight,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
