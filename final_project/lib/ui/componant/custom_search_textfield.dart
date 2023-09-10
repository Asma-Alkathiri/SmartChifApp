import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 256,
          height: 51,
          child: TextField(
            style: const TextStyle(fontSize: 14, color: Color(0xffADADB8)),
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.search_rounded),
              // isDense: false,
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: orangeColor)),
              //   enabled: false,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              hintText: 'Search',
              // border: OutlineInputBorder(
              //     borderSide: BorderSide()) // Remove the border
            ),
          ),
        ),
      ],
    );
  }
}
