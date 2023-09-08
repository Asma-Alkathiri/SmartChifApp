import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class CoustomDeviderText extends StatelessWidget {
  const CoustomDeviderText(
      {super.key,
      this.widthDivider1 = 95,
      this.heightDivider1 = 1,
      this.widthDivider2 = 95,
      this.heightDivider2 = 1,
      this.divider1Color = lightGrayColor,
      this.divider2Color = lightGrayColor,
      this.title = "sign in with",
      this.textColor = darkGrayColor});

  final double widthDivider1;
  final double heightDivider1;
  final double widthDivider2;
  final double heightDivider2;
  final Color divider1Color;
  final Color divider2Color;
  final String title;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: widthDivider1, // Customize the width of the divider
            height: heightDivider1, // Customize the height of the divider
            color: divider1Color // Customize the color of the divider
            ),
        kHSpace24,
        Text(
          title,
          style: TextStyle(
              fontSize: 16, color: textColor, fontWeight: FontWeight.w500),
        ),
        kHSpace24,
        Container(
          width: widthDivider2, // Customize the width of the divider
          height: heightDivider2, // Customize the height of the divider
          color: divider2Color, // Customize the color of the divider
        ),
      ],
    );
  }
}
