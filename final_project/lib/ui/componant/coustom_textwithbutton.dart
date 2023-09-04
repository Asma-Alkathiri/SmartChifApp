import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Already have an account?",
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(
          width: 1,
        ),
        InkWell(
          onTap: () {},
          child: const Text(
            "Login",
            style: TextStyle(color: orangeColor),
          ),
        )
      ],
    );
  }
}
