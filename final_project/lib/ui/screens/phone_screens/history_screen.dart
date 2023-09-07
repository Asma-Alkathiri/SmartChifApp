import 'package:final_project/ui/componant/coustom_searchfield.dart';
import 'package:final_project/ui/componant/history_card.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Column(
        children: [
          const TextSearchField(),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return const HistoryCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
