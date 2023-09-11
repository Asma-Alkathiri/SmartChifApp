import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/material.dart';

class TabletHomeScreen extends StatelessWidget {
  const TabletHomeScreen({super.key, this.onPressed});
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              kVSpace16,
              const HomeContainer(
                width: 900,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Center(child: SmallCard());
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 50,
                    mainAxisExtent: 215,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
