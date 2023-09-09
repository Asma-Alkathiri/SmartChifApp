import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentContainer extends StatelessWidget {
  const ComponentContainer(
      {super.key,
      this.image =
          "https://cdn.salla.sa/XPpjy/o3kDsuAEnsH0EEKkfy9riE6urv2UDLylY94dhfJA.png",
      this.name = "Pepper"});
  final String image;
  final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      onSecondaryTap: () {},
      child: Container(
        height: 40,
        width: 110,
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: orangeColor.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 0,
                offset: const Offset(0, 3),
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          child: Row(
            children: [
              SizedBox(
                height: 29,
                width: 30,
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(100),
                  ),
                  child: Image.network(image),
                ),
              ),
              kHSpace4,
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
