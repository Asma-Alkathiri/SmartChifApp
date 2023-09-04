import 'package:final_project/ui/componant/coustom_rectanglefield.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/coustom_textwithsubtext.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SignInAppbar(),
          SizedBox(
            height: 100,
          ),
          TextWithSubText(),
          SizedBox(
            height: 30,
          ),
          RectangleTextNumberField(),
          SizedBox(
            height: 30,
          ),
          TextWithTextButton(
            title: "I don’t recevie a code!",
            buttontitle: "Please resend",
          )
        ],
      ),
    );
  }
}
