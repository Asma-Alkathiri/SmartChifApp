import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Lottie.network(
                "https://lottie.host/5c4ad1bc-716b-43a2-b1c6-82a61d249ecd/5t1Zt0UCFq.json"),
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