import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:flutter/material.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 39,
      decoration: BoxDecoration(
        color: const Color(0xffFE724C),
        borderRadius: BorderRadius.circular(28.5),
      ),
      child: InkWell(
        onTap: () {
          SupabaseInitializer().supabaseClient.auth.signOut();
        },
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Image.asset("assets/Group 18072.png"),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  "Log Out",
                  style: TextStyle(fontSize: 14, color: whiteColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
