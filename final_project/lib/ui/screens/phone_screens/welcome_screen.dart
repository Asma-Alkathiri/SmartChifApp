import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      appBarTitle: "home",
    );
  }
}
