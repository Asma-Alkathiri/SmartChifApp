import 'package:flutter/material.dart';

class CostomDrawer extends StatelessWidget {
  const CostomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: Drawer(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/14019743/pexels-photo-14019743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                radius: 60,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Abdulrazaq Ali",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "3boode@gmail.com",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            //  CustomLogoutButton()
          ],
        ),
      ),
    );
  }
}
