import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/screens/phone_screens/Onboarding/Page1.dart';
import 'package:final_project/ui/screens/phone_screens/Registration_screen.dart';
import 'package:final_project/ui/screens/phone_screens/resetpassword.dart';
import 'package:flutter/material.dart';

void main() {
  SupabaseInitializer.supabaseInitialize(); // this line to run the supabase
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Page1());
  }
}
