import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            kVSpace24,
            Center(
              child: Lottie.network(
                  "https://lottie.host/956c8e87-98a6-40e5-aef3-3c64bc277a97/MMD3NkQhgF.json",
                  height: 400),
            ),
            kVSpace32,
            const Center(
              child: Text(
                "Enjoy Cooking with Ease and Creativity with Our App.",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
                textAlign: TextAlign.center,
              ),
            ),
            kVSpace16,
            const Text(
              "Choose Your Ingredients and Get Custom Recipes in Seconds! ",
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
