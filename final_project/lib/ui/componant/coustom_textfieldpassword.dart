import 'package:flutter/material.dart';

class TextfieldPassword extends StatelessWidget {
  const TextfieldPassword({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Password', // Your label text
            style: TextStyle(
              fontSize: 18,
              color: Color(0xff9796A1),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xffEEEEEE))),
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Color(0xffFE724C)),
                borderRadius: BorderRadius.circular(10)),
            hintText: 'Enter your name',
          ),
        ),
      ],
    );
  }
}
