import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
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
    return const MaterialApp(home: AuthenticationScreen());
  }
}
