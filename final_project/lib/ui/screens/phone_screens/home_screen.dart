import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
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
            builder: (context) => const AccountScreen(),
          ),
        );
      },
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              kVSpace16,
              const HomeContainer(),
              kVSpace16,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child:
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     const SizedBox(
                    //       height: 95,
                    //       width: 155,
                    //       child: Text(
                    //         "Suggestion Suggestion",
                    //         style: TextStyle(
                    //             color: blackColor,
                    //             fontSize: 30,
                    //             fontWeight: FontWeight.w400),
                    //       ),
                    //     ),
                    MasonryGridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(child: SmallCard()),
                    );
                  },
                ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
