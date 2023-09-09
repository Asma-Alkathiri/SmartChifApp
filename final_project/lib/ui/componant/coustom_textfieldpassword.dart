import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class Textfieldpassword extends StatelessWidget {
  const Textfieldpassword({
    super.key,
    this.controller,
    this.fontsize = 18,  this.width = 360,
  });
  final TextEditingController? controller;
  final double fontsize;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "password",
            style: TextStyle(color: grayColor, fontSize: fontsize),
          ),
          const SizedBox(height: 14),
          SizedBox(
            width: width,
            height: 65,
            child: TextField(
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              controller: controller,
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: lightGrayColor,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: lightGrayColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: orangeColor),
                    borderRadius: BorderRadius.circular(10)),
                hintText: 'Password',
                hintStyle: const TextStyle(
                    color: hintColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                filled: true,
                fillColor: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
