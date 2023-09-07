import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.hintText,
    required this.label,
    this.inputType,
    this.maxLines,
    this.onSubmitted,
    this.controller,
  });
  final String hintText;
  final String label;

  final TextInputType? inputType;
  final int? maxLines;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(color: Colors.grey, fontSize: 18),
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 75,
            width: 360,
            child: TextField(
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
              keyboardType: inputType,
              maxLines: maxLines,
              onSubmitted: onSubmitted,
              controller: controller,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(
                    color: hintColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: lightGrayColor,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: orangeColor, width: 1.5),
                ),
                filled: true,
                fillColor: whiteColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
