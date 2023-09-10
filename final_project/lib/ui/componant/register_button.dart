import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton(
      {super.key,
      this.onPressed,
      this.width = 278,
      this.hieght = 50,
      this.fontsize = 16});
  final Function()? onPressed;
  final double width;
  final double hieght;
  final double fontsize;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white38,
          fixedSize: Size(width, hieght),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(color: whiteColor, width: 1.2)),
      onPressed: onPressed,
      child: Text("Register now",
          style: TextStyle(
              color: whiteColor,
              fontSize: fontsize,
              fontWeight: FontWeight.w400)),
    );
  }
}
