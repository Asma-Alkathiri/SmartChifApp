import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextSearchField extends StatelessWidget {
  const TextSearchField({
    super.key,
    this.onSubmitted,
    this.controller,
  });
  final Function(String)? onSubmitted;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        controller: controller,
        onSubmitted: onSubmitted,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        maxLines: 1,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: grayColor,
          hintText: "Find for food or restaurant...",
          hintStyle: const TextStyle(
              color: hintColor, fontWeight: FontWeight.w400, fontSize: 18),
          contentPadding: const EdgeInsets.all(16),
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
          fillColor: const Color.fromARGB(31, 214, 211, 211),
        ),
      ),
    );
  }
}
