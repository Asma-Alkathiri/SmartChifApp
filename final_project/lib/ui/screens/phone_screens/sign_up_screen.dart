import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignInAppbar(),
            kVSpace32,
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                  kVSpace24,
                  TextFieldWidget(
                    controller: nameController,
                    hintText: 'Full name',
                    label: 'Full name',
                  ),
                  kVSpace8,
                  TextFieldWidget(
                    controller: emailController,
                    hintText: 'Your email',
                    label: 'E-mail',
                  ),
                  kVSpace8,
                  Textfieldpassword(
                    controller: passwordController,
                  ),
                  kVSpace24,
                  OrangeButton(
                    title: "SIGN UP",
                    height: 50,
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
                                  builder: (context) => const SignInScreen()),
                              (route) {
                            return false;
                          });
                        }
                      }
                    },
                  ),
                  kVSpace24,
                  const TextWithTextButton(
                    buttontitle: "",
                    description: 'Already have account?',
                    title: ' Login',
                  ),
                  kVSpace32,
                  const CoustomDeviderText(),
                  kVSpace8,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GoogleButton(
                      onPressed: () {
                        SupabaseInitializer().onTapBtnGoogleSignin();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
