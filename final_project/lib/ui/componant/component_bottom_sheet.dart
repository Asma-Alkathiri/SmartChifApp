import 'package:final_project/ui/componant/componant_container.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentBottomSheet extends StatelessWidget {
  const ComponentBottomSheet({super.key, this.Category = "Vegetables"});
  final String Category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace16,
              Text(
                Category,
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              GridView.builder(
                shrinkWrap: true,
                itemCount: 5,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 16),
                itemBuilder: (context, index) {
                  return const Center(child: ComponentContainer());
                },
              ),
              kVSpace64,
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    kHSpace8,
                    OrangeButton(
                      height: 45,
                      width: 165,
                      title: " RESET",
                      onPressed: () {},
                    ),
                    kHSpace16,
                    OrangeButton(
                      height: 45,
                      width: 165,
                      title: " APPLY",
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
