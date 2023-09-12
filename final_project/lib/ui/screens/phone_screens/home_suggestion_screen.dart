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

import '../../../../models/suggestion_recipe_model.dart';
import '../../componant/home_suggestion_card.dart';

class HomeSuggestionsScreen extends StatelessWidget {
  const HomeSuggestionsScreen({super.key, required this.suggestionRecipe});
  final SuggestionRecipe suggestionRecipe;
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        appBarTitle: "${suggestionRecipe.name}",
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                kVSpace64,
                Expanded(
                  child: ListView.separated(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return HomeSuggestionCard(
                        foodName: suggestionRecipe.name,
                        description: suggestionRecipe.description,
                        foodImage: suggestionRecipe.recipeImg,
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
