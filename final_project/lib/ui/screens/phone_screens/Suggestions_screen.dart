import 'package:final_project/globals.dart';
import 'package:final_project/models/gpt_content.dart';
import 'package:final_project/service/gpt/gpt_service.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:flutter/material.dart';

String prompt = 'i only have $ingredientList.';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "Suggestions",
      onPressedBackIcon: () {},
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
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return Column(
                  children: [
                    kVSpace32,
                    Expanded(
                      child: ListView.separated(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return SuggestionCard(
                            foodName: '${gptContent.recipeName}',
                            foodImage: imageUrl,
                            description: '${gptContent.steps}',
                            onPressedFavoriteIcone: () {},
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
