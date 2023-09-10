import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class CoustomOnboardingButton extends StatelessWidget {
  const CoustomOnboardingButton(
      {super.key,
      required this.onPressed,
      required this.icon1,
      this.width = 100,
      this.height = 100});
  final Function() onPressed;
  final IconData icon1;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16),
        backgroundColor: orangeColor, // Button color
      ),
      child: Icon(
        icon1, // You can replace this with your button's content
        size: 32.0,
        color: Colors.white, // Icon color
      ),
    );
  }
}
