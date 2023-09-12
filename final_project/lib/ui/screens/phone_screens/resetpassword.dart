import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});
  final TextEditingController? controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          const SignInAppbar(),
          kVSpace128,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                kVSpace32,
                const TextWithSubText(
                  title1: "Resset Password",
                  title2:
                      "Please enter your email address to request a password reset",
                ),
                kVSpace24,
                TextFieldWidget(
                  controller: controller,
                  hintText: "Enter your email",
                  label: "",
                ),
                kVSpace32,
                OrangeButton(
                  title: "Send new password",
                  width: 278,
                  height: 57,
                  onPressed: () {
                    print('test');
                    SupabaseInitializer()
                        .supabaseClient
                        .auth
                        .resetPasswordForEmail(controller!.text);
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
