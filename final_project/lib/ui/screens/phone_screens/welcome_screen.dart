import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/register_button.dart';
import 'package:final_project/ui/componant/welcome_scaffold.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:final_project/ui/screens/phone_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_typing/animated_typing.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpace128,
            kVSpace64,
            const Text(
              "Welcome to",
              style: TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 55),
              textAlign: TextAlign.left,
            ),
            kVSpace8,
            const Text(
              "Smart Chef",
              style: TextStyle(
                  color: orangeColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 44),
              textAlign: TextAlign.left,
            ),
            kVSpace24,
            kVSpace16,
            const SizedBox(
              width: 280,
              height: 150,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: AnimatedTyping(
                  text:
                      'Cooking has never been this easy! Let our app inspire and guide you to prepare mouthwatering meals.',
                  duration: Duration(
                    seconds: 4,
                  ),
                  style: TextStyle(
                    color: darkGrayColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            kVSpace64,
            const CoustomDeviderText(
              textColor: lightGrayColor,
            ),
            Center(
              child: Column(
                children: [
                  kVSpace24,
                  GoogleButton(onPressed: () {
                    SupabaseInitializer().onTapBtnGoogleSignin();
                  }),
                  kVSpace24,
                  RegisterButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                  ),
                  kVSpace16,
                  TextWithTextButton(
                    text: 'Already have account?',
                    textColor: lightGrayColor,
                    buttonTitle: 'Sign In',
                    buttonTitleColor: orangeColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
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
