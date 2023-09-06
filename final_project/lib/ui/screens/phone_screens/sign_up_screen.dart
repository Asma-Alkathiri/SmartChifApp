import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SignInAppbar(),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const TextFieldWidget(
            hintText: '',
            label: 'Full name',
          ),
          const SizedBox(
            height: 30,
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
            height: 100,
          ),
          OrangeButton(
            title: "SIGN UP",
            height: 60,
            width: 248,
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          const TextWithTextButton(
            description: 'Already have account?',
            title: 'sign in',
          ),
          const SizedBox(
            height: 30,
          ),
          const CoustomDeviderText(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GoogleButton(
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
