import 'package:final_project/models/suggestion_recipe_model.dart';
import 'package:final_project/service/supabase_recipes.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/componant/suggestion_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/home_favourite_screen.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text(
          "favourite",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        // actions: const [
        //   Padding(
        //     padding: EdgeInsets.only(right: 12, top: 12),
        //     child: Center(child: ImageProfileContainar()),
        //   ),
        // ],
      ),
      body: FutureBuilder(
          future: SupabaseRecipes().getRecipes(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final favorateList = snapshot.data ?? [];
              return ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                children: [
                  for (final favorate in favorateList) ...[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16),
                      child: SuggestionCard(
                        foodName: '${favorate.name}',
                        description: '${favorate.description}',
                        foodImage: "${favorate.recipeImg}",
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeFavouriteScreen(
                                        foodName: favorate.name,
                                        description: favorate.description,
                                        foodImage: favorate.recipeImg,
                                      )));
                        },
                      ),
                    ),
                  ]
                ],
              );
              // for (final favorate in favorateList) {
              //   return Column(
              //     children: [
              //       kVSpace24,
              //       Padding(
              //         padding: const EdgeInsets.symmetric(horizontal: 28),
              //         child: SizedBox(
              //           height: MediaQuery.of(context).size.height,
              //           child: SingleChildScrollView(
              //             child: Column(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Column(
              //                   children: [
              //                     kVSpace16,
              //                     const SizedBox(
              //                       width: 170,
              //                       height: 80,
              //                       child: Text(
              //                         "Favourite Suggestions",
              //                         style: TextStyle(
              //                             fontSize: 26,
              //                             fontWeight: FontWeight.w500),
              //                       ),
              //                     ),
              //                     kVSpace16,
              //                     // kVSpace16,
              //                     ListView.builder(
              //                       shrinkWrap: true,
              //                       // itemCount: favorate.length,
              //                       itemBuilder: (context, index) {
              //                         return SuggestionCard(
              //                           foodName: '${favorate.name}',
              //                           description: '${favorate.description}',
              //                           foodImage: "${favorate.recipeImg}",
              //                         );
              //                       },
              //                     )
              //                   ],
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   );
              // }
            }
            return const SizedBox.shrink();
          }),
    );
  }
}
