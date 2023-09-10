import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class ImageProfileContainar extends StatelessWidget {
  const ImageProfileContainar({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 38,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
          color: yellowColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 237, 216, 123).withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 0,
              offset: const Offset(0, 2),
            ),
          ]),
      child: IconButton(
        padding: const EdgeInsets.only(top: 5),
        icon: const Icon(
          Icons.person,
          size: 24,
          color: blackColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
