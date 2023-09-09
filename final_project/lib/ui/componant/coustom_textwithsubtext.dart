import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title1,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          kVSpace16,
          SizedBox(
            width: 400,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title2,
                style: const TextStyle(
                    fontSize: 16,
                    color: grayColor,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
