import 'dart:async';

import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_navigationbar.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  bool access = false;
  StreamSubscription? listen;
  @override
  void initState() {
    SupabaseInitializer().supabaseClient.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;

      if (event == AuthChangeEvent.signedIn) {
        access = true;
        setState(() {});
      } else if (event == AuthChangeEvent.signedOut) {
        access = false;
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: access ? const NavigationBar1() : const SignInScreen(),
    );
  }
}
