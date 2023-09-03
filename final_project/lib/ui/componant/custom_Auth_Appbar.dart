import 'package:flutter/material.dart';

class SignInAppbar extends StatelessWidget {
  const SignInAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/image/Ellipse 128.png",
            width: 70,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            "assets/image/Group 18120.png",
            width: 160,
          ),
        ),
      ],
    );
  }
}