import 'dart:ui';
import 'package:final_project/cubit/theme_cubit.dart';
import 'package:final_project/firebase_options.dart';
import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/screens/phone_screens/onboarding_screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
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
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(

              debugShowCheckedModeBanner: false,
              theme: state.customTheme,
              // darkTheme: DarkTheme,
              home: const AuthenticationScreen()
              // const NavigationBar1(),
              );

        },
      ),
    );
  }
}
