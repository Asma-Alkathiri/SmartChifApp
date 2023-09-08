import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
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
            kVSpace24,
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                  ),
                  kVSpace4,
                  kVSpace24,
                  TextFieldWidget(
                    controller: emailController,
                    hintText: 'Your email',
                    label: 'E-mail',
                  ),
                  kVSpace16,
                  Textfieldpassword(
                    controller: passwordController,
                  ),
                  kVSpace16,
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Forgot Password?",
                      style: TextStyle(color: orangeColor),
                    ),
                  ),
                  kVSpace16,
                  OrangeButton(
                    title: "LOGIN",
                    height: 50,
                    width: 248,
                    onPressed: () async {
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        await SupabaseInitializer()
                            .supabaseClient
                            .auth
                            .signInWithPassword(
                                password: passwordController.text,
                                email: emailController.text);
                      }
                      if (context.mounted) {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const AuthenticationScreen(),
                            ), (route) {
                          return false;
                        });
                      }
                    },
                  ),
                  kVSpace32,
                  TextWithTextButton(
                    // buttontitle: "",
                    text: 'Don\'t have account?',
                    buttonTitle: ' sign up',
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ), (route) {
                        return false;
                      });
                    },
                  ),
                  kVSpace32,
                  const CoustomDeviderText(),
                  kVSpace16,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GoogleButton(
                        height: 50,
                        width: 248,
                        onPressed: () {
                          SupabaseInitializer().onTapBtnGoogleSignin();
                        }),
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
