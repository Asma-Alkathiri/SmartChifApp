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
            kVSpace64,
            Center(
              child: Lottie.network(
                  "https://lottie.host/956c8e87-98a6-40e5-aef3-3c64bc277a97/MMD3NkQhgF.json",
                  height: 400),
            ),
            kVSpace24,
            const Center(
              child: Text(
                "Browse your menu and order directly",
                style: TextStyle(fontSize: 38),
                textAlign: TextAlign.center,
              ),
            ),
            kVSpace16,
            const Text(
              "Our app can send you everywhere, even space. For only \$2.99 per month",
              style: TextStyle(
                  fontSize: 17, fontWeight: FontWeight.w400, color: grayColor),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
