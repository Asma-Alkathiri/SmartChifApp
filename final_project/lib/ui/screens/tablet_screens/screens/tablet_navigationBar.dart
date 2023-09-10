import 'package:final_project/ui/screens/tablet_screens/screens/tablet_Account_screen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_authentication_screeen.dart';
import 'package:final_project/ui/screens/tablet_screens/screens/tablet_home_screen.dart';
import 'package:flutter/material.dart';

class TabletNavigationBar extends StatefulWidget {
  const TabletNavigationBar({super.key});

  @override
  State<TabletNavigationBar> createState() => _TabletNavigationBarState();
}

class _TabletNavigationBarState extends State<TabletNavigationBar> {
  final List screens = [
    const TabletHomeScreen(),
    const TabletAuthenticationScreen(),

    const TabletAccountScreen(),

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