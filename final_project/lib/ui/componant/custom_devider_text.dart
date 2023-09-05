import 'package:flutter/material.dart';

class CoustomDeviderText extends StatelessWidget {
  const CoustomDeviderText(
      {super.key,
      this.widthDivider1 = 150,
      this.heightDivider1 = 1,
      this.widthDivider2 = 150,
      this.heightDivider2 = 1,
      this.divider1Color = Colors.black,
      this.divider2Color = Colors.black,
      this.sizedBox1 = 10,
      this.sizedBox2 = 10,
      this.title = "sign in with",
      this.textColor = Colors.black});

  final double widthDivider1;
  final double heightDivider1;
  final double widthDivider2;
  final double heightDivider2;
  final Color divider1Color;
  final Color divider2Color;
  final double sizedBox1;
  final double sizedBox2;
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
        SizedBox(
          width: sizedBox1,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 14, color: textColor),
        ),
        SizedBox(
          width: sizedBox2,
        ),
        Container(
          width: widthDivider2, // Customize the width of the divider
          height: heightDivider2, // Customize the height of the divider
          color: divider2Color, // Customize the color of the divider
        ),
      ],
    );
  }
}