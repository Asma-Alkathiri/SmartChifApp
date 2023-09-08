import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class BackIconContainar extends StatelessWidget {
  const BackIconContainar({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      width: 38,
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: grayColor.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 0,
              offset: const Offset(0, 3),
            ),
          ]),
      child: IconButton(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
        icon: const Icon(
          Icons.arrow_back_ios_new_sharp,
          size: 18,
          color: blackColor,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
