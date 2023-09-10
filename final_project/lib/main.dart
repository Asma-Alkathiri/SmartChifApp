import 'dart:ui';

import 'package:final_project/firebase_options.dart';
import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/theme/dark_theme.dart';
import 'package:final_project/theme/light_theme.dart';
import 'package:final_project/ui/componant/coustom_navigationbar.dart';

import 'package:final_project/ui/screens/phone_screens/OTP_screen.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:final_project/ui/screens/phone_screens/welcome_screen.dart';

import 'package:final_project/ui/screens/tablet_screens/screens/tablet_Account_screen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_authentication_screeen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_home_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';

void main() async {
  await SupabaseInitializer.supabaseInitialize();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };
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
      home: const NavigationBar1(),
    );
  }
}
