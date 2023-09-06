import 'package:final_project/service/supabase_initializer.dart';

import 'package:final_project/ui/componant/coustom_homeButton.dart';

import 'package:final_project/ui/screens/phone_screens/Onboarding_Page/Page3.dart';
import 'package:final_project/ui/screens/phone_screens/onboarding_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';

import 'package:flutter/material.dart';

void main() {
  SupabaseInitializer.supabaseInitialize(); // this line to run the supabase
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
        home: HomeButton(
      name: "Ali",
    ));

    return const MaterialApp(home: OnboardingScreen());


  }
}
