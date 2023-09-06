import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

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
          TextFieldWidget(
            controller: nameController,
            hintText: '',
            label: 'Full name',
          ),
          const SizedBox(
            height: 30,
          ),
          TextFieldWidget(
            controller: emailController,
            hintText: '',
            label: 'E-mail',
          ),
          const SizedBox(
            height: 30,
          ),
          Textfieldpassword(
            controller: passwordController,
          ),
          const SizedBox(
            height: 100,
          ),
          OrangeButton(
            title: "SIGN UP",
            height: 60,
            width: 248,
            onPressed: () async {
              if (emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty) {
                // Signing up ...
                await SupabaseInitializer().supabaseClient.auth.signUp(
                      email: emailController.text,
                      password: passwordController.text,
                    );
                if (context.mounted) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignInScreen()), (route) {
                    return false;
                  });
                }
              }
            },
          ),
          const SizedBox(
            height: 30,
          ),
          const TextWithTextButton(),
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
