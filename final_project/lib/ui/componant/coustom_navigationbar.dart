import 'package:final_project/ui/constants/custom_colors.dart';

import 'package:final_project/ui/screens/phone_screens/Account_screen.dart';
import 'package:final_project/ui/screens/phone_screens/favourite_screen.dart';
import 'package:final_project/ui/screens/phone_screens/home_screen.dart';
import 'package:flutter/material.dart';

class NavigationBar1 extends StatefulWidget {
  const NavigationBar1({super.key});

  @override
  State<NavigationBar1> createState() => _NavigationBar1State();
}

class _NavigationBar1State extends State<NavigationBar1> {
  final List screens = [
    HomeScreen(),
    const FavouriteScreen(),
    const AccountScreen(),
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: orangeColor,
        unselectedItemColor: lightGrayColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),

          // BottomNavigationBarItem(
          //     icon: Image.asset('assets/Group 18073.png'), label: "Profile"),
          // BottomNavigationBarItem(
          //     icon: Image.asset('assets/Group 17443.png'), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        backgroundColor: whiteColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: (index) {
          selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "1",
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}

// ------------ SecondScreen







