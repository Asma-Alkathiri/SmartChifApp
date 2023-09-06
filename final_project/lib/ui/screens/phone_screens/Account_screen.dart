import 'package:final_project/ui/componant/custom_Account_Appbar.dart';
import 'package:final_project/ui/componant/orange_button.dart';
import 'package:final_project/ui/componant/text_field.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key,  this.name = "Name"});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const AccountAppBar(),
          Column(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.pexels.com/photos/18270600/pexels-photo-18270600/free-photo-of-indian-traditional-bride-in-nauvari-traditional-attire.jpeg"),
                radius: 60,
              ),
              kVSpace8,
              Text(
                name,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              kVSpace8,
              const Text(
                "Edit Profile",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w100),
              ),
            ],
          ),
          kVSpace16,
          const TextFieldWidget(
            hintText: "Full Name",
            label: "Full Name",
          ),
          kVSpace16,
          const TextFieldWidget(
            hintText: "E-mail",
            label: "E-mail",
          ),
          kVSpace16,
          const TextFieldWidget(
            hintText: "Phone Number",
            label: "Phone Number",
          ),
          kVSpace32,
          OrangeButton(
            title: "SAVE",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
