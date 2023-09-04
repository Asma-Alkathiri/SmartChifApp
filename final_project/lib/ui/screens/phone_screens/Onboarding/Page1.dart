import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Lottie.network(
                "https://lottie.host/956c8e87-98a6-40e5-aef3-3c64bc277a97/MMD3NkQhgF.json"),
          ),

          //  padding: const EdgeInsets.symmetric(horizontal: 20),
          Center(
            child: Text(
              "Browse your menu and order directly",
              style: TextStyle(fontSize: 38),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          Text(
            "Our app can send you everywhere, even space. For only \$2.99 per month",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
          ),
        ],
      ),
    );
  }
}
