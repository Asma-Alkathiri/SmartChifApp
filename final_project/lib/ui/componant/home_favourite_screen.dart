import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class HomeFavouriteCard extends StatelessWidget {
  const HomeFavouriteCard(
      {super.key,
      this.onPressedFavoriteIcone,
      this.foodName,
      this.description,
      this.components,
      this.foodImage});
  final Function()? onPressedFavoriteIcone;
  final String? foodName;
  final String? description;
  final String? components;
  final String? foodImage;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        height: 630,
        width: MediaQuery.of(context).size.width,
        // color: orangeColor,
      ),
      Positioned(
        bottom: 0,
        child: Container(
          width: 340,
          height: 450,
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
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      kVSpace32,
                      Text(
                        foodName!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      kVSpace4,
                      Text(
                        description!,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          // overflow: TextOverflow.ellipsis
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
        top: 40,
        left: 20,
        child: Stack(children: [
          SizedBox(
            height: 200,
            width: 300,
            child: ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
                child: Image.network(
                  foodImage!,
                  fit: BoxFit.cover,
                )),
          ),
        ]),
      ),
    ]);
  }
}
