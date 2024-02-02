import 'package:flutter/material.dart';

class CustomProgressStepBar extends StatelessWidget {
  const CustomProgressStepBar({
    super.key,
    required this.scrollDirection,
    required this.padding,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.color_1,
    required this.color_2,
    required this.color_3,
    required this.color_4,
    required this.sizedBoxWidth,
  });

  final Axis scrollDirection;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;
  final BorderRadiusGeometry borderRadius;
  final Color color_1;
  final Color color_2;
  final Color color_3;
  final Color color_4;
  final double sizedBoxWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: SingleChildScrollView(
        scrollDirection: scrollDirection,
        child: Row(
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: color_1,
              ),
            ),
            SizedBox(
              width: sizedBoxWidth,
            ),
            Container(
              width: width,
              height: height,
              decoration:
                  BoxDecoration(borderRadius: borderRadius, color: color_2),
            ),
            SizedBox(
              width: sizedBoxWidth,
            ),
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: color_3,
              ),
            ),
            SizedBox(
              width: sizedBoxWidth,
            ),
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                borderRadius: borderRadius,
                color: color_4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
