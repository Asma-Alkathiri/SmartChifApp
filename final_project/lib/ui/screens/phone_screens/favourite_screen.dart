import 'package:final_project/ui/componant/main_appbar.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: false,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const MainAppbar(
                  title: "Favourite",
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 104,
                        width: 131,
                        child: Image.asset(
                            "final_project/assets/images/empty_file.png"),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
