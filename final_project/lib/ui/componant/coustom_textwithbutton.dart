import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    super.key,
    required this.title,
    required this.description,
    this.onTap, required String buttontitle,
  });
  final String title;
  final String description;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          description,

          style: const TextStyle(fontSize: 14),
        ),
        const SizedBox(
          width: 1,
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            title,

            style: const TextStyle(color: orangeColor),
          ),
        )
      ],
    );
  }
}
