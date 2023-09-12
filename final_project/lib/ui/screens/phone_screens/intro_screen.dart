import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: orangeColor,
      body: Center(
        child: Image.asset(
          "assets/images/intro2.png",
          height: 350,
          width: 350,
        ),
      ),
    );
  }
}
