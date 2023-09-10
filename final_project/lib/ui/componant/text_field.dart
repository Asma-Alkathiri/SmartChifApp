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
    this.textfontsize = 18,  this.width = 360,
  });
  final String hintText;
  final String label;

  final TextInputType? inputType;
  final int? maxLines;
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  final double textfontsize;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(color: grayColor, fontSize: textfontsize),
          ),
          const SizedBox(height: 14),
          SizedBox(
            height: 75,
            width: width,
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
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
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
                fillColor: Theme.of(context).colorScheme.background,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
