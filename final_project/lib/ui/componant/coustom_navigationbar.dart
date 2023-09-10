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
    const HomeScreen(),
    const FavouriteScreen(),

    const AccountScreen(),

  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/Group 17444.png'), label: "Home"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Group 17440.png'), label: "Profile"),
          BottomNavigationBarItem(
              icon: Image.asset('assets/Group 17445.png'), label: "Profile"),
          // BottomNavigationBarItem(
          //     icon: Image.asset('assets/Group 18073.png'), label: "Profile"),
          // BottomNavigationBarItem(
          //     icon: Image.asset('assets/Group 17443.png'), label: "Profile"),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.green,
        backgroundColor: Colors.grey[200],
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







