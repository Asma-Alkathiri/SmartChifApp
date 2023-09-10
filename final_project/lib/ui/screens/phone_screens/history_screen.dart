import 'package:final_project/ui/componant/coustom_searchfield.dart';
import 'package:final_project/ui/componant/history_card.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "History",
      onPressedBackIcon: () {
        // Navigator.pop(context);
      },
      onPressedProfile: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AccountScreen(),
          ),
        );
      },
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            kVSpace8,
            const TextSearchField(),
            kVSpace16,
            Expanded(
              child: ListView.separated(
                itemCount: 6,
                itemBuilder: (context, index) {
                  return HistoryCard(
                    onPressedFavoriteIcone: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return kVSpace16;
                },
              ),
            ),
            kVSpace32,
          ],
        ),
      ),
    );
  }
}
