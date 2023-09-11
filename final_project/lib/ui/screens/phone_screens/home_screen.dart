import 'package:final_project/ui/componant/custom_logout_button.dart';
import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.background,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12, top: 12),
            child: Center(
                child: ImageProfileContainar(
                    // onPressed: onPressedProfile,
                    )),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Container(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/14019743/pexels-photo-14019743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      radius: 50,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("data"),
                  ],
                ),
              ),
              kVSpace24,
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {},
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {},
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Home"),
                onTap: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: LogOutButton(),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      // appBarTitle: "Home",
      // // onPressedBackIcon: () {},
      // onPressedProfile: () {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => const AccountScreen(),
      //     ),
      //   );
      // },
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            kVSpace24,
            const HomeContainer(),
            kVSpace16,
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.45,
                  child: const SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            kVSpace16,
                            SizedBox(
                              width: 165,
                              height: 80,
                              child: Text(
                                "Meal Suggestions",
                                style: TextStyle(
                                    fontSize: 26, fontWeight: FontWeight.w500),
                              ),
                            ),
                            kVSpace16,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
                          ],
                        ),
                        Column(
                          children: [
                            kVSpace24,
                            SmallCard(),
                            kVSpace16,
                            SmallCard(),
                          ],
                        )
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
