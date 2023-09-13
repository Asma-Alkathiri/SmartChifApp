import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textfieldpassword.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/error_container.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/authentication_screen.dart';
import 'package:final_project/ui/screens/phone_screens/resetpassword.dart';
import 'package:final_project/ui/screens/phone_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../../models/suggestion_recipe_model.dart';
import '../../../service/supabase_suggestion_recipe.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final box1 = GetStorage();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  getMeal() async {
    SupabaseSuggestionRecipe().getSuggestionRecipe();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SignInAppbar(),
            kVSpace32,
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  kVSpace64,
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
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ResetPasswordScreen(),
                        ),
                      );
                    },
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
                      if (emailController.text.isEmpty &&
                          passwordController.text.isEmpty) {
                        return showDialog(
                            context: context,
                            builder: (context) {
                              return Center(
                                  child: ErrorContainer(
                                onPressed: () {},
                              ));
                            });
                      }
                      if (emailController.text.isNotEmpty &&
                          passwordController.text.isNotEmpty) {
                        try {
                          await SupabaseInitializer()
                              .supabaseClient
                              .auth
                              .signInWithPassword(
                                  password: passwordController.text,
                                  email: emailController.text);
                        } catch (error) {
                          return showDialog(
                              context: context,
                              builder: (context) {
                                return const ErrorContainer();
                              });
                        }
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
                  kVSpace16,
                  TextWithTextButton(
                    text: 'Don\'t have account?',
                    buttonTitle: 'sign up',
                    textColor: Theme.of(context).colorScheme.primary,
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
                  kVSpace64,
                  CoustomDeviderText(
                    textColor: Theme.of(context).colorScheme.primary,
                    divider1Color: Theme.of(context).colorScheme.primary,
                    divider2Color: Theme.of(context).colorScheme.primary,
                  ),
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
