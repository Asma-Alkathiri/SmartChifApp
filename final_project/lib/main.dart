import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/theme/dark_theme.dart';
import 'package:final_project/theme/light_theme.dart';
import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:final_project/ui/screens/phone_screens/Registration_screen.dart';
import 'package:final_project/ui/screens/phone_screens/Suggestions_screen.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/favourite_screen.dart';
import 'package:final_project/ui/screens/phone_screens/history_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:final_project/ui/screens/phone_screens/onboarding_screen.dart';
import 'package:final_project/ui/screens/phone_screens/resetpassword.dart';
import 'package:final_project/ui/screens/phone_screens/welcome_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  SupabaseInitializer.supabaseInitialize();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: DarkTheme,
      home: const WelcomeScreen(),
    );
  }
}
