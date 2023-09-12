import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({
    super.key,
    this.widthappbar = 160,
    this.width = 180,
  });

  final double widthappbar;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/Vector-5.png",
            width: widthappbar,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            "assets/Component 1.png",
            width: width,
          ),
        ),
      ],
    );
  }
}
