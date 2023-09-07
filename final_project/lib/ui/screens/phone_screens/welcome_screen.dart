import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/back_icon_containar.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      appBarTitle: "home",
    );
  }
}
