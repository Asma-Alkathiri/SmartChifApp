import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key, required this.screenTitle});
  final String screenTitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          kVSpace128,
          SizedBox(
            height: 104,
            width: 131,
            child: Image.asset("assets/images/empty_file.png"),
          ),
          kVSpace32,
          Text(
            "No upcoming $screenTitle",
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
