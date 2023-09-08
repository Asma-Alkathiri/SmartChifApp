import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white38,
          fixedSize: const Size(278, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          side: const BorderSide(color: whiteColor, width: 1.2)),
      onPressed: onPressed,
      child: const Text("Register now",
          style: TextStyle(
              color: whiteColor, fontSize: 16, fontWeight: FontWeight.w400)),
    );
  }
}
