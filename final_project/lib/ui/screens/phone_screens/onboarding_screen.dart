import 'package:final_project/ui/componant/coustom_OnboardingButton.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/screens/phone_screens/Onboarding_Page/Page1.dart';
import 'package:final_project/ui/screens/phone_screens/Onboarding_Page/Page2.dart';
import 'package:final_project/ui/screens/phone_screens/Onboarding_Page/Page3.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              Page1(),
              Page2(),
              Page3(),
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
