import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 100,
          ),
          const TextWithSubText(
            title1: "Resset Password",
            title2:
                "Please enter your email address to request a password reset",
          ),
          const TextFieldWidget(
            hintText: "Enter your email",
            label: "",
          ),
          const SizedBox(
            height: 30,
          ),
          OrangeButton(
            title: "Send new password",
            width: 278,
            height: 57,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
