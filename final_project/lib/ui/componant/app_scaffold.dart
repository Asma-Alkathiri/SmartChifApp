import 'package:final_project/ui/componant/back_icon_containar.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold(
      {super.key,
      this.appBarTitle,
      this.body,
      this.drawer,
      this.onPressedBackIcon,
      this.onPressedProfile});
  final String? appBarTitle;
  final Widget? body;
  final Widget? drawer;
  final Function()? onPressedBackIcon;
  final Function()? onPressedProfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Center(
            child: BackIconContainar(
              onPressed: onPressedBackIcon,
            ),
          ),
        ),
        title: Center(
          child: Text(
            appBarTitle ?? "",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12, top: 12),
            child: Center(
                child: ImageProfileContainar(
              onPressed: onPressedProfile,
            )),
          ),
        ],
      ),
      drawer: drawer,
      body: body,
    );
  }
}
