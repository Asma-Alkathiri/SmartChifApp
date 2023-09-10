import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SkipContainer extends StatelessWidget {
  const SkipContainer({super.key, this.onPressedSkip});
  final Function()? onPressedSkip;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      width: 55,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(
              color: whiteColor.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 0,
              offset: const Offset(0, 3),
            ),
          ]),
      child: TextButton(
        onPressed: onPressedSkip,
        child: const Text(
          "Skip",
          style: TextStyle(
            color: orangeColor,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
