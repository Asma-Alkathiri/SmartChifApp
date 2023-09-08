import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.width = 278,
    this.height = 50,
    required this.onPressed,
  });
  final double width;
  final double height;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: whiteColor,
        elevation: 0.08,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          kHSpace8,
          Align(
              alignment: Alignment.centerLeft,
              child: Image.asset('assets/Group 17967.png')),
          kHSpace16,
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Continue with google",
              style: TextStyle(
                  fontSize: 16, color: textColor, fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
