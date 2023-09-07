import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer(
      {super.key,
      this.errorTitle = "Error",
      this.errorDescription =
          "No upcoming No upcoming No upcoming No upcoming ",
      this.buttonTitle = "Cancel",
      this.onPressed});

  final String errorTitle;
  final String? errorDescription;
  final String buttonTitle;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      height: 356,
      width: 303,
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 7,
              spreadRadius: 0,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Center(
        child: Column(
          children: [
            kVSpace16,
            SizedBox(
              height: 104,
              width: 131,
              child: Image.asset("assets/images/Error.png"),
            ),
            kVSpace16,
            Text(
              errorTitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            kVSpace8,
            Text(
              errorDescription ?? "",
              style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
              textAlign: TextAlign.center,
            ),
            kVSpace32,
            OrangeButton(
              title: buttonTitle,
              onPressed: () {},
              height: 49,
              width: 230,
            )
          ],
        ),
      ),
    );
  }
}
