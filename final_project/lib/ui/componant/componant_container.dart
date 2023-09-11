import 'dart:ui';
import 'package:final_project/globals.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../models/ingredient_model.dart';

class ComponentContainer extends StatefulWidget {
  const ComponentContainer({super.key, required this.ingredient});

  final Ingredient ingredient;

  @override
  State<ComponentContainer> createState() => _ComponentContainerState();
}

class _ComponentContainerState extends State<ComponentContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isSelected) {
          ingredientList.remove(widget.ingredient.name);
          isSelected = !isSelected;
          setState(() {});
        } else {
          ingredientList.add(widget.ingredient.name);
          isSelected = !isSelected;
          setState(() {});
        }
      },
      onSecondaryTap: () {},
      child: Container(
        height: 40,
        width: 110,
        decoration: BoxDecoration(
            color: isSelected ? orangeColor : whiteColor,
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
                  child: Image.network(widget.ingredient.ingrImg!),
                  //  Image(
                  //       image:
                  //           CachedNetworkImageProvider(ingredient.ingrImg!)
                ),
              ),
              kHSpace4,
              Text(
                widget.ingredient.name!,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
