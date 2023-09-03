import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 117,
      height: 43,
      decoration: BoxDecoration(
        color: const Color(0xffFE724C),
        borderRadius: BorderRadius.circular(28.5),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset("assets/image/Group 18072.png"),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "Log Out",
                style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
              )
            ],
          ),
        ),
      ),
    );
  }
}