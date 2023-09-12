import 'package:final_project/cubit/theme_cubit.dart';
import 'package:final_project/models/suggestion_recipe_model.dart';
import 'package:final_project/service/supabase_users.dart';
import 'package:final_project/ui/componant/custom_logout_button.dart';
import 'package:final_project/ui/componant/home_container.dart';
import 'package:final_project/ui/componant/image_profile_containar.dart';
import 'package:final_project/ui/componant/small_card.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/Suggestions_screen.dart';
import 'package:final_project/ui/screens/phone_screens/account_screen.dart';
import 'package:final_project/ui/screens/phone_screens/favourite_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_suggestion_screen.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';

import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../models/user_model.dart';

import '../../../service/supabase_ingredient.dart';
import '../../../service/supabase_initializer.dart';
import '../../../service/supabase_suggestion_recipe.dart';
import '../../componant/suggestion_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, this.onPressed});
  final Function()? onPressed;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // final box1 = GetStorage();

  bool isDark = false;
  // bool loading = true;

  late Icon icon;
  late UserModel userData = UserModel();
  @override
  void initState() {
    // getMeal();

    icon = const Icon(Icons.sunny);
    getUser();
    super.initState();
    SupabaseIngredient().getIngredientbyType("Vegetable");
    SupabaseIngredient().getIngredientbyType("Fruit");
    SupabaseIngredient().getIngredientbyType("Protein");
    SupabaseIngredient().getIngredientbyType("Carbohydrate");
    SupabaseIngredient().getIngredientbyType("Dairy");
  }

  getUser() async {
    userData = await SupabaseUser().getUserNmae();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final id = SupabaseInitializer().supabaseClient.auth.currentUser?.id;
    final User? user = SupabaseInitializer().supabaseClient.auth.currentUser;
    // final List<SuggestionRecipe> suggestionsList = box11.read("suggestions");
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          iconTheme:
              IconThemeData(color: Theme.of(context).colorScheme.primary),
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
                DrawerHeader(
                  child: Column(
                    children: [
                      kVSpace24,
                      CircleAvatar(
                        backgroundColor: whiteColor,
                        backgroundImage: NetworkImage(
                            'https://www.stedwards.edu/themes/steds/images/no-photo500x535.jpg'),
                        radius: 40,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        userData.name != null ? '${userData.name}' : '',
                      ),
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
        body: SafeArea(
            top: false,
            child: Column(children: [
              kVSpace16,
              const HomeContainer(),
              kVSpace8,
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.42,
                      child: SingleChildScrollView(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Expanded(
                                child: Column(children: [
                              kVSpace16,
                              SizedBox(
                                width: 170,
                                height: 60,
                                child: Text(
                                  "Meal Suggestions",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              kVSpace16,
                              Column(children: [
                                for (var i = 0;
                                    i < suggestionRecipeList.length;
                                    i++)
                                  i % 2 != 0
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SmallCard(
                                            suggestionRecipe:
                                                suggestionRecipeList[i],
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomeSuggestionsScreen(
                                                            suggestionRecipe:
                                                                suggestionRecipeList[
                                                                    i],
                                                          )));
                                            },
                                          ),
                                        )
                                      : SizedBox.shrink(),
                              ])
                            ])),
                            Column(children: [
                              for (var i = 0;
                                  i < suggestionRecipeList.length;
                                  i++)
                                i % 2 == 0
                                    ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SmallCard(
                                          suggestionRecipe:
                                              suggestionRecipeList[i],
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        HomeSuggestionsScreen(
                                                          suggestionRecipe:
                                                              suggestionRecipeList[
                                                                  i],
                                                        )));
                                          },
                                        ),
                                      )
                                    : SizedBox.shrink(),
                            ])
                          ]))))
            ])));

    // Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 28),
    //     child: SizedBox(
    //       height: MediaQuery.of(context).size.height * 0.42,
    //       child: SingleChildScrollView(
    //         child: Row(
    //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Expanded(
    //               child: Column(
    //                 children: [
    //                   kVSpace16,
    //                   SizedBox(
    //                     width: 170,
    //                     height: 60,
    //                     child: Text(
    //                       "Meal Suggestions",
    //                       style: TextStyle(
    //                           fontSize: 24,
    //                           fontWeight: FontWeight.w500),
    //                     ),
    //                   ),
    //                   kVSpace16,
    //                   FutureBuilder(
    //                       future: SupabaseSuggestionRecipe
    //                           .getSuggestionRecipeEven(),
    //                       builder: (context, snapshot) {
    //                         if (snapshot.hasData) {
    //                           final suggestionRecipeList =
    //                               snapshot.data ?? [];
    //                           return SizedBox(
    //                             height: 270,
    //                             child: ListView(
    //                                 shrinkWrap: true,
    //                                 children: [
    //                                   for (final suggestionRecipe
    //                                       in suggestionRecipeList) ...[
    //                                     Padding(
    //                                       padding:
    //                                           const EdgeInsets.all(8.0),
    //                                       child: SmallCard(
    //                                         suggestionRecipe:
    //                                             suggestionRecipe,
    //                                         onTap: () {},
    //                                       ),
    //                                     ),
    //                                   ]
    //                                 ]),
    //                           );
    //                         }
    //                         return const SizedBox.shrink();
    //                       }),
    //     ],
    //   ),
    // ),
    // Expanded(
    //   child: Column(
    //     children: [
    //       kVSpace24,
    //       FutureBuilder(
    //           future: SupabaseSuggestionRecipe
    //               .getSuggestionRecipeOdd(),
    //           builder: (context, snapshot) {
    //             if (snapshot.hasData) {
    //               final suggestionRecipeList =
    //                   snapshot.data ?? [];
    //               return SizedBox(
    //                 height: 340,
    //                 child: ListView(
    //                     scrollDirection: Axis.vertical,
    //                     shrinkWrap: true,
    //                     children: [
    //                       for (final suggestionRecipe
    //                           in suggestionRecipeList) ...[
    //                         Padding(
    //                           padding:
    //                               const EdgeInsets.all(8.0),
    //                           child: SmallCard(
    //                             suggestionRecipe:
    //                                 suggestionRecipe,
    //                             onTap: () {},
    //                           ),
    //                         ),
    //                       ]
    //                     ]),
    //               );
    //             }
    //             return const SizedBox.shrink();
    //           }),

    // SmallCard(),
    //             ],
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // )),
  }
}
