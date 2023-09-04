import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    super.key,
    this.title = "Already have an account?",
    this.buttontitle = "Login",
  });
  final String title;
  final String buttontitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          width: 1,
        ),
        InkWell(
          onTap: () {},
          child: Text(
            buttontitle,
            style: const TextStyle(color: orangeColor),
          ),
        )
      ],
    );
  }
}
