import 'package:final_project/cubit/theme_cubit.dart';
import 'package:final_project/ui/componant/custom_logout_button.dart';

import 'package:final_project/service/supabase_initializer.dart';

import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/app_scaffold.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:final_project/ui/screens/phone_screens/favourite_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../service/supabase_ingredient_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDark = false;
  late Icon icon;

  @override
  void initState() {
    icon = const Icon(Icons.sunny);
    super.initState();
    SupabaseIngredient().getIngredientbyType("Vegetable");
    SupabaseIngredient().getIngredientbyType("Fruit");
    SupabaseIngredient().getIngredientbyType("Protein");
    SupabaseIngredient().getIngredientbyType("Carbohydrate");
    SupabaseIngredient().getIngredientbyType("Dairy");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).colorScheme.primary),
        title: Text(
          "Home",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
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
        child: SizedBox(
          child: ListView(
            children: [
              const DrawerHeader(
                child: Column(
                  children: [
                    kVSpace24,
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/14019743/pexels-photo-14019743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                      radius: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("data"),
                  ],
                ),
              ),
              kVSpace64,
              ListTile(
                leading: const Icon(
                  Icons.person,
                  color: grayColor,
                ),
                title: const Text(
                  "Profile",
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const AccountScreen())));
                },
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: grayColor,
                ),
                title: const Text("Home"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const HomeScreen())));
                },
              ),
              kVSpace16,
              ListTile(
                leading: const Icon(
                  Icons.favorite,
                  color: grayColor,
                ),
                title: const Text("Favorite"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const FavouriteScreen())));
                },
              ),
              kVSpace64,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: LogOutButton(),
                    ),
                    IconButton(
                        onPressed: () {
                          isDark = !isDark;
                          final theme = context.read<ThemeCubit>();
                          isDark
                              ? icon = const Icon(Icons.sunny)
                              : icon = const Icon(Icons.nightlight);
                          isDark
                              ? theme.changeTheme("Dark")
                              : theme.changeTheme("Light");
                          setState(() {});
                        },
                        icon: icon)
                  ],
                ),
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
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.50,
                  child: const SingleChildScrollView(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            kVSpace16,
                            SizedBox(
                              width: 170,
                              height: 80,
                              child: Text(
                                "Meal Suggestions",
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.w500),
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
