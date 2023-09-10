import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "Home",
      onPressedBackIcon: () {},
      onPressedProfile: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AccountScreen(),
          ),
        );
      },
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            kVSpace24,
            const HomeContainer(),
            kVSpace16,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
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
                                "Meal Suggestions",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
                              ),
                            ),
                            kVSpace16,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
                          ],
                        ),
                        Column(
                          children: [
                            kVSpace24,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
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
