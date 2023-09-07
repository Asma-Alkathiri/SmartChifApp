import 'package:final_project/ui/componant/back_icon_containar.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, this.appBarTitle, this.body, this.drawer});
  final String? appBarTitle;
  final Widget? body;
  final Widget? drawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: whiteColor,
        elevation: 0,
        leading: const Center(
          child: BackIconContainar(),
        ),
        title: Center(
          child: Text(
            appBarTitle ?? "",
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: blackColor),
          ),
        ),
        actions: const [
          Center(child: ImageProfileContainar()),
        ],
      ),
      drawer: drawer,
      body: body,
    );
  }
}
