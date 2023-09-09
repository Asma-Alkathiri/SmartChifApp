import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    super.key,
    required this.buttonTitle,
    required this.text,
    this.onTap,
    this.buttonTitleColor = orangeColor,
    this.textColor = darkGrayColor,  this.fontsize = 14,  this.fontsizebutton = 14,
  });
  final String buttonTitle;
  final String text;
  final Function()? onTap;
  final Color textColor;
  final Color buttonTitleColor;
  final double fontsize;
   final double fontsizebutton;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: fontsize, color: textColor, fontWeight: FontWeight.w400),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            buttonTitle,
            style:
                TextStyle(color: buttonTitleColor, fontWeight: FontWeight.w400,fontSize: fontsizebutton),
          ),
        )
      ],
    );
  }
}
