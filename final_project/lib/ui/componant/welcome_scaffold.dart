import 'package:final_project/ui/componant/skip_container.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/screens/phone_screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScaffold extends StatelessWidget {
  const WelcomeScaffold({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(fit: StackFit.expand, children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: const AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  whiteColor.withOpacity(0.4), BlendMode.lighten),
            ),
          ),
        ),
        Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                const Color.fromARGB(80, 197, 200, 201).withOpacity(0.4),
                const Color.fromARGB(130, 37, 31, 50).withOpacity(0.9),
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
            child: child),
        Positioned(
          top: 50,
          right: 20,
          child: SkipContainer(
            onPressedSkip: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnboardingScreen(),
                ),
              );
            },
          ),
        )
      ]),
    );
  }
}
