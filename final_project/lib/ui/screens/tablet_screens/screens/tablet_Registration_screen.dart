import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:flutter/material.dart';

class TabletRegistration extends StatelessWidget {
  const TabletRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 100,
          ),
          const TextWithSubText(
            title1: "Registration",
            title2: "Enter your phone number to verify your account",
          ),
          const TextFieldWidget(
            textfontsize: 30,
            width: 900,
            hintText: "Enter your Phone",
            label: "",
          ),
          const SizedBox(
            height: 40,
          ),
          OrangeButton(
            title: "Send",
            width: 700,
            height: 57,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
