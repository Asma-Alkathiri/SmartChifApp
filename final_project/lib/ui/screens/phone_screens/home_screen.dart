import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              kVSpace16,
              const HomeContainer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const Center(child: SmallCard());
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 16,
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
