import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Center(
              child: Lottie.network(
                  "https://lottie.host/5c4ad1bc-716b-43a2-b1c6-82a61d249ecd/5t1Zt0UCFq.json",
                  height: 400),
            ),
            kVSpace16,
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
