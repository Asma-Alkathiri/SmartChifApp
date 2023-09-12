import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12, top: 12),
            child: Center(child: ImageProfileContainar()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            kVSpace24,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: const SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            kVSpace16,
                            SizedBox(
                              width: 170,
                              height: 80,
                              child: Text(
                                "Favourite Suggestions",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w500),
                              ),
                            ),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                          ],
                        ),
                        Column(
                          children: [
                            // kVSpace24,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                            // kVSpace16,
                            // SmallCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
