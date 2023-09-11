import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            kVSpace24,
            Center(
              child: Lottie.network(
                  "https://lottie.host/e941e07b-329a-4686-94cc-6880a404ccad/Mv0e2BD3rZ.json",
                  height: 400),
            ),
            kVSpace32,
            const Center(
              child: Text(
                "Break the mealtime routine",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
                textAlign: TextAlign.center,
              ),
            ),
            kVSpace16,
            const Text(
              "and try new flavors every day with our app that offers innovative suggestions.",
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.w400, color: grayColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
