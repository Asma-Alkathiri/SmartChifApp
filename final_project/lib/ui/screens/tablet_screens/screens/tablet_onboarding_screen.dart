import 'package:final_project/ui/componant/coustom_OnboardingButton.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:final_project/ui/screens/tablet_screens/onboarding_page2/tablet_page1.dart';
import 'package:final_project/ui/screens/tablet_screens/onboarding_page2/tablet_page2.dart';
import 'package:final_project/ui/screens/tablet_screens/onboarding_page2/tablet_page3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class TabletOnboardingScreen extends StatefulWidget {
  const TabletOnboardingScreen({super.key});

  @override
  State<TabletOnboardingScreen> createState() => _TabletOnboardingScreenState();
}

class _TabletOnboardingScreenState extends State<TabletOnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              TabletPage1(),
              TabletPage2(),
              TabletPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: SmoothPageIndicator(
              controller: _controller,
              onDotClicked: (index) {
                _controller.nextPage(
                    duration: const Duration(microseconds: 500),
                    curve: Curves.bounceIn);
              },
              count: 3,
              effect: const SlideEffect(
                activeDotColor: yellowColor,
                dotColor: lightGrayColor,
                dotHeight: 5,
                dotWidth: 10,
              ),
            ),
          ),
          onLastPage
              ? Container(
                  alignment: const Alignment(0, 0.8),
                  child: CoustomOnboardingButton(
                    icon1: Icons.arrow_forward_sharp,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                  ),
                )
              : Container(
                  alignment: const Alignment(0, 0.8),
                  child: CoustomOnboardingButton(
                    icon1: Icons.arrow_forward_sharp,
                    width: 130,
                    height: 130,
                    onPressed: () {
                      _controller.nextPage(
                          duration: const Duration(microseconds: 500),
                          curve: Curves.bounceIn);
                    },
                  ),
                ),
        ],
      ),
    );
  }
}
