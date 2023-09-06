import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 249,
      width: 327,
      padding: const EdgeInsets.all(34),
      decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: orangeColor.withOpacity(0.1),
              blurRadius: 7,
              spreadRadius: 0,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Do you want suggestions for your specific ingredients?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          OrangeButton(
            title: "start",
            onPressed: () {},
            height: 39,
            width: 210,
          ),
        ],
      ),
    );
  }
}
