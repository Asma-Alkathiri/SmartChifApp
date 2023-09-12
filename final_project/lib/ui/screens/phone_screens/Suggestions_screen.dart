import 'package:final_project/globals.dart';
import 'package:final_project/models/gpt_content.dart';
import 'package:final_project/models/recipe_model.dart';
import 'package:final_project/service/gpt/gpt_service.dart';
import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/service/supabase_recipes.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_favourite_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:uuid/uuid.dart';

String prompt = 'i only have $ingredientList.';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "Suggestions",
      onPressedBackIcon: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
      onPressedProfile: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AuthenticationScreen(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: FutureBuilder(
            future: GPTService().getSuggestions(prompt),
            builder: (context, snapshot) {
              final (gptContent, imageUrl) =
                  snapshot.data ?? (GPTContent(), '');
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: LoadingAnimationWidget.fourRotatingDots(
                    color: orangeColor,
                    size: 100,
                  ),
                );
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    kVSpace64,
                    Expanded(
                      child: ListView.separated(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return SuggestionCard(
                            foodName: '${gptContent.recipeName}',
                            foodImage: imageUrl,
                            description: '${gptContent.steps}',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomeFavouriteScreen(
                                            foodName: gptContent.recipeName,
                                            description: gptContent.steps,
                                            foodImage: imageUrl,
                                          )));
                            },
                            onPressedFavoriteIcone: () async {
                              final recipe = RecipeModel(
                                  name: gptContent.recipeName,
                                  recipeImg: imageUrl,
                                  description: gptContent.steps);
                              SupabaseRecipes().insertRecipe(recipe);
                            },
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return kVSpace16;
                        },
                      ),
                    )
                  ],
                );
              } else {
                return const SizedBox.shrink();
              }
            }),
      ),
    );
  }
}
