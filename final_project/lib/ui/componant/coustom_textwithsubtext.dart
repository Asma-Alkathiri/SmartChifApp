import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class TextWithSubText extends StatelessWidget {
  const TextWithSubText({
    super.key,
    this.title1 = "Vefification Code",
    this.title2 =
        "Please type the verification code sent to prelookstudio@gmail.com",
  });
  final String title1;
  final String title2;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Column(
              children: [
                Text(
                  title1,
                  style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title2,
                style: const TextStyle(
                    fontSize: 14,
                    color: grayColor,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ],
      ),
    );
  }
}