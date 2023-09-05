import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 100,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Login",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldWidget(
            hintText: '',
            label: 'E-mail',
          ),
          const SizedBox(
            height: 30,
          ),
          const Textfieldpassword(),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgaut Password?",
              style: TextStyle(color: orangeColor),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          OrangeButton(
            title: "Login",
            height: 60,
            width: 248,
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          const TextWithTextButton(),
          const SizedBox(
            height: 100,
          ),
          const CoustomDeviderText(),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GoogleButton(onPressed: () {}),
          )
        ],
      ),
    );
  }
}
