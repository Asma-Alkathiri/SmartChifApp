
import 'package:flutter/material.dart';

class AccountAppBar extends StatelessWidget {
  const AccountAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: Image.asset(
            "assets/image/Vector-5.png",
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Image.asset(
            "assets/image/Component 1.png",
            width: 190,
          ),
        ),
      ],
    );
  }
}
