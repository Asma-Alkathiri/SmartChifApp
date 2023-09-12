import 'package:final_project/globals.dart';
import 'package:final_project/models/gpt_content.dart';
import 'package:final_project/models/recipe_model.dart';
import 'package:final_project/service/gpt/gpt_service.dart';
import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/service/supabase_recipes.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../../../../models/suggestion_recipe_model.dart';
import '../../componant/home_favourite_screen.dart';

class HomeFavouriteScreen extends StatelessWidget {
  const HomeFavouriteScreen({
    this.foodName,
    this.description,
    this.foodImage,
  });
  final String? foodName;
  final String? description;
  final String? foodImage;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBarTitle: "${foodName}",
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                kVSpace64,
                Expanded(
                  child: ListView.separated(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return HomeFavouriteCard(
                        foodName: foodName,
                        description: description,
                        foodImage: foodImage,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return kVSpace16;
                    },
                  ),
                )
              ],
            )));
  }
}
