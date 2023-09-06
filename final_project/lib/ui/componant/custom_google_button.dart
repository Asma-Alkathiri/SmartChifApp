import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
    this.buttonheight = 54, required this.onPressed,
  });
  final double buttonheight;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: buttonheight,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffFFFFFF),
          ),
          onPressed: onPressed,
          child: Row(
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset('assets/Group 17967.png')),
              const SizedBox(
                width: 150,
              ),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "GOOGLE",
                  style: TextStyle(fontSize: 13, color: Colors.black),
                ),
              )
            ],
          )),
    );
  }
}
