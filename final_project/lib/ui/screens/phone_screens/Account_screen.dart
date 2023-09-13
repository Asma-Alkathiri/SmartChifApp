import 'package:final_project/models/user_model.dart';
import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/service/supabase_users.dart';
import 'package:final_project/ui/componant/custom_Account_Appbar.dart';
import 'package:final_project/ui/componant/custom_logout_button.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  final id = SupabaseInitializer().supabaseClient.auth.currentUser?.id;
  final User? user = SupabaseInitializer().supabaseClient.auth.currentUser;

  late UserModel userData = UserModel();
  @override
  void initState() {
    super.initState();
    getUser();
  }

  getUser() async {
    userData = await SupabaseUser().getUserNmae();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 270,
                  width: MediaQuery.of(context).size.width,
                ),
                const AccountAppBar(),
                Positioned(
                  top: 100,
                  right: 0,
                  left: 0,
                  child: Column(
                    children: [
                      const CircleAvatar(
                        backgroundColor: whiteColor,
                        backgroundImage: NetworkImage(
                            'https://www.stedwards.edu/themes/steds/images/no-photo500x535.jpg'),
                        radius: 40,
                      ),
                      kVSpace8,
                      Text(
                        userData.name != null ? '${userData.name}' : '',
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      kVSpace8,
                      const Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: grayColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            kVSpace16,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Text('${user?.email}'),
                  kVSpace128,
                  // const LogOutButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
