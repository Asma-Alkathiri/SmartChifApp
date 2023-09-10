import 'package:final_project/ui/componant/componant_container.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Suggestions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ComponentBottomSheet extends StatelessWidget {
  const ComponentBottomSheet({super.key, this.category = "Vegetables"});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace16,
              Text(
                category,
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
              Row(
                children: [
                  kHSpace8,
                  OrangeButton(
                    height: 45,
                    width: 150,
                    title: " RESET",
                    onPressed: () {},
                  ),
                  kHSpace16,
                  OrangeButton(
                    height: 45,
                    width: 150,
                    title: " APPLY",
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SuggestionsScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
