import 'dart:async';

import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_home_screen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class TabletAuthenticationScreen extends StatefulWidget {
  const TabletAuthenticationScreen({super.key});

  @override
  State<TabletAuthenticationScreen> createState() =>
      _TabletAuthenticationScreenState();
}

class _TabletAuthenticationScreenState
    extends State<TabletAuthenticationScreen> {
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
      body: access ? const TabletHomeScreen() : const TabletSignInScreen(),
    );
  }
}
