import 'package:final_project/ui/componant/coustom_rectanglefield.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_Auth_Appbar.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          SizedBox(
            width: 400,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: [
                      Text(
                        "Vefification Code",
                        style: TextStyle(
                            fontSize: 36, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Please type the verification code sent to prelookstudio@gmail.com",
                      style: TextStyle(
                          fontSize: 14,
                          color: grayColor,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
          ),
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
