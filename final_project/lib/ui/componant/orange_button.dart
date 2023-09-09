import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class OrangeButton extends StatelessWidget {
  const OrangeButton(
      {super.key,
      this.width = 278,
      this.height = 57,
      this.onPressed,
      required this.title,
      this.fontsize = 16});

  final double width;
  final double height;
  final Function()? onPressed;
  final String title;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 6,
        shadowColor: orangeColor,
        backgroundColor: orangeColor,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white,
            fontSize: fontsize,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
