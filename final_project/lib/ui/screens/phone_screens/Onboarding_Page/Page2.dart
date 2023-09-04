import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Lottie.network(
                "https://lottie.host/e941e07b-329a-4686-94cc-6880a404ccad/Mv0e2BD3rZ.json"),
          ),

          //  padding: const EdgeInsets.symmetric(horizontal: 20),
          const Center(
            child: Text(
              "Browse your menu and order directly",
              style: TextStyle(fontSize: 38),
            ),
          ),

          const SizedBox(
            height: 15,
          ),
          const Text(
            "Our app can send you everywhere, even space. For only \$2.99 per month",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}