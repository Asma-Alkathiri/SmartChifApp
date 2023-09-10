import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/material.dart';

class SuggestionsScreen extends StatelessWidget {
  const SuggestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "Suggestions",
      onPressedBackIcon: () {
        // Navigator.pop(context);
      },
      onPressedProfile: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AccountScreen(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            kVSpace32,
            Expanded(
              child: ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return SuggestionCard(
                    onPressedFavoriteIcone: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return kVSpace16;
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
