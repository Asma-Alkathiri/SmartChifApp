import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class MainAppbar extends StatelessWidget {
  const MainAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        height: 125,
        decoration: const BoxDecoration(color: whiteColor),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            height: 38,
            width: 38,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 7,
                    spreadRadius: 0,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: IconButton(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
              icon: const Icon(
                Icons.arrow_back_ios_new_sharp,
                size: 18,
              ),
              onPressed: () {},
            ),
          ),
          const Text(
            "Search Food",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          Container(
            height: 38,
            width: 38,
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
            decoration: BoxDecoration(
                color: yellowColor,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 237, 216, 123).withOpacity(0.2),
                    blurRadius: 7,
                    spreadRadius: 0,
                    offset: const Offset(0, 2),
                  ),
                ]),
            child: IconButton(
              padding: const EdgeInsets.only(top: 5),
              icon: const Icon(
                Icons.person,
                size: 24,
              ),
              onPressed: () {},
            ),
          ),
        ]),
      );
  }
}