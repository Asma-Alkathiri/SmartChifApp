import 'package:final_project/ui/componant/componant_container.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Suggestions_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import '../../models/ingredient_model.dart';

class ComponentBottomSheet extends StatelessWidget {
  ComponentBottomSheet({
    super.key,
  });

  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    final List<Ingredient> vegetableList = box.read("Vegetable");
    final List<Ingredient> fruitList = box.read("Fruit");
    final List<Ingredient> proteinList = box.read("Protein");
    final List<Ingredient> carbohydrateList = box.read("Carbohydrate");
    final List<Ingredient> dairyList = box.read("Dairy");

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
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: vegetableList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Center(
                      child:
                          ComponentContainer(ingredient: vegetableList[index]));
                },
              ),
              kVSpace16,
              Text(
                "Fruit",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: fruitList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Center(
                      child: ComponentContainer(ingredient: fruitList[index]));
                },
              ),
              kVSpace16,
              Text(
                "Protein",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: proteinList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Center(
                      child:
                          ComponentContainer(ingredient: proteinList[index]));
                },
              ),
              kVSpace16,
              Text(
                "Carbohydrate",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: carbohydrateList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Center(
                      child: ComponentContainer(
                          ingredient: carbohydrateList[index]));
                },
              ),
              kVSpace16,
              Text(
                "Dairy",
                style: const TextStyle(fontSize: 18),
              ),
              kVSpace16,
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: dairyList.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisExtent: 40,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Center(
                      child: ComponentContainer(ingredient: dairyList[index]));
                },
              ),
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
