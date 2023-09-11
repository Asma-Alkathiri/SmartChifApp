import 'package:final_project/ui/componant/componant_container.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Suggestions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../service/supabase_ingredient_service.dart';

class ComponentBottomSheet extends StatelessWidget {
  const ComponentBottomSheet({super.key, this.category = "Vegetables"});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kVSpace16,
              Text(
                "Vegetable",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              FutureBuilder(
                  future: SupabaseIngredient().getIngredientbyType('Vegetable'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final ingredient = snapshot.data!;
                      return GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: ingredient.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Center(
                              child: ComponentContainer(
                                  ingredient: ingredient[index]));
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  }),
              kVSpace16,
              Text(
                "Fruit",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              FutureBuilder(
                  future: SupabaseIngredient().getIngredientbyType('Fruit'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final ingredient = snapshot.data!;
                      return GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: ingredient.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Center(
                              child: ComponentContainer(
                                  ingredient: ingredient[index]));
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  }),
              kVSpace16,
              Text(
                "Protein",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              FutureBuilder(
                  future: SupabaseIngredient().getIngredientbyType('Protein'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final ingredient = snapshot.data!;
                      return GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: ingredient.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Center(
                              child: ComponentContainer(
                                  ingredient: ingredient[index]));
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  }),
              kVSpace16,
              Text(
                "Carbohydrate",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              FutureBuilder(
                  future:
                      SupabaseIngredient().getIngredientbyType('Carbohydrate'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final ingredient = snapshot.data!;
                      return GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: ingredient.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Center(
                              child: ComponentContainer(
                                  ingredient: ingredient[index]));
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  }),
              kVSpace16,
              Text(
                "Dairy",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              FutureBuilder(
                  future: SupabaseIngredient().getIngredientbyType('Dairy'),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final ingredient = snapshot.data!;
                      return GridView.builder(
                        shrinkWrap: true,
                        primary: false,
                        itemCount: ingredient.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16,
                                mainAxisExtent: 40,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, index) {
                          return Center(
                              child: ComponentContainer(
                                  ingredient: ingredient[index]));
                        },
                      );
                    }
                    return const SizedBox.shrink();
                  }),
              kVSpace64,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
