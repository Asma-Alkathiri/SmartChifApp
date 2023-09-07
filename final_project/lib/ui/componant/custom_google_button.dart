import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.buttonheight = 54,
    required this.onPressed,
  });
  final double buttonheight;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: whiteColor,
            elevation: 0.08,
            fixedSize: const Size(200, 50),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              kHSpace16,
              Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/Group 17967.png')),
              kHSpace32,
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "GOOGLE",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              ),
              kHSpace16,
            ],
          )),
    );
  }
}
