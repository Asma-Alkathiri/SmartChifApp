import 'package:flutter/material.dart';

class CoustomOnboardingButton extends StatelessWidget {
  const CoustomOnboardingButton({super.key, required this.onPressed, required this.icon1});
  final Function() onPressed;
  final IconData icon1;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(16.0),
        backgroundColor: const Color(0xffFE724C), // Button color
      ),
      child: Icon(
       icon1, // You can replace this with your button's content
        size: 32.0,
        color: Colors.white, // Icon color
      ),
    );
  }
}