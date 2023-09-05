import 'package:flutter/material.dart';


class Textfieldpassword extends StatelessWidget {
  const Textfieldpassword({
    super.key, this.controller,
  });
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "password",
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 360,
          height: 65,
          child: TextField(
            controller: controller,
            obscureText: true,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide:  BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Color(0xffFE724C)),
                  borderRadius: BorderRadius.circular(10)),
              hintText: '',
              hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 18),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
