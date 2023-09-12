import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  const SuggestionCard(
      {super.key,
      this.onPressedFavoriteIcone,
      this.foodName = 'Bruschetta',
      this.description = 'toppings of tomato',
      this.components = "CHEESE",
      this.foodImage = "assets/images/bf3.jpg",
      this.onTap});
  final Function()? onPressedFavoriteIcone;
  final String foodName;
  final String description;
  final String components;
  final String foodImage;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(children: [
        Container(
          height: 450,
          width: MediaQuery.of(context).size.width,
          // color: orangeColor,
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: 340,
            height: 350,
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: grayColor.withOpacity(0.2),
                    blurRadius: 7,
                    spreadRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        kVSpace64,
                        Text(
                          foodName,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        kVSpace4,
                        Text(
                          description,
                          maxLines: 3,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 20,
          child: Stack(children: [
            SizedBox(
              height: 170,
              width: 300,
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Image.network(
                    foodImage,
                    fit: BoxFit.cover,
                  )),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                height: 35,
                width: 35,
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                decoration: BoxDecoration(
                  color: orangeColor,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: const Icon(
                    Icons.favorite,
                    color: whiteColor,
                    size: 19,
                  ),
                  onPressed: onPressedFavoriteIcone,
                ),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
